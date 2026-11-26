cask "pycharm-oss" do
  arch arm: "-aarch64"

  # Upstream published the stable 2026.3.0.2 build in the release tagged
  # `pycharm/2026.3.1-rc-2` and there's no `pycharm/2026.3.0.2` tag, so the
  # tag is the second part of the version. Remove the `csv` handling
  # (`release_version` and in `livecheck`) at the next release that's tagged
  # as its own version.
  version "2026.3.0.2,2026.3.1-rc-2"
  sha256 arm:   "ae8efe600d34b7f940b803206fdb72cecf22cf9bf0b1cb08ba47a1673f50e1fd",
         intel: "d94d37709f7d2d41e30b100d22687b5ad93dd1f5c13ca53588f2c1c1db3ce556"

  release_version = version.csv.second || version.csv.first
  url "https://github.com/JetBrains/intellij-community/releases/download/pycharm%2F#{release_version}/pycharm-#{version.csv.first}#{arch}.dmg"
  name "PyCharm OSS"
  desc "Open-source edition of PyCharm"
  homepage "https://github.com/JetBrains/intellij-community"

  # Not every GitHub release provides a file for macOS, so we check multiple
  # recent releases instead of only the "latest" release. The tag is added to
  # the version when it differs from the file's (see the `version` comment).
  livecheck do
    url :url
    regex(/^pycharm[._-]v?(\d+(?:\.\d+)+)#{arch}\.dmg$/i)
    strategy :github_releases do |json, regex|
      json.map do |release|
        next if release["draft"] || release["prerelease"]

        tag = release["tag_name"]&.delete_prefix("pycharm/")
        next if tag.blank?

        release["assets"]&.map do |asset|
          match = asset["name"]&.match(regex)
          next if match.blank?

          if tag == match[1]
            match[1]
          else
            "#{match[1]},#{tag}"
          end
        end
      end.flatten
    end
  end

  depends_on :macos

  app "PyCharm OSS.app"

  uninstall quit: "com.jetbrains.pycharm.ce"

  zap trash: [
    "~/Library/Application Support/JetBrains/PyCharmCE*",
    "~/Library/Caches/JetBrains/PyCharmCE*",
    "~/Library/Logs/JetBrains/PyCharmCE*",
    "~/Library/Preferences/com.jetbrains.pycharm.ce.plist",
    "~/Library/Saved Application State/com.jetbrains.pycharm.ce.savedState",
  ]
end
