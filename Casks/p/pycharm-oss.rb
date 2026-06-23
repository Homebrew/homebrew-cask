cask "pycharm-oss" do
  arch arm: "-aarch64"

  version "2026.1.2"
  sha256 arm:   "de3603370ca944fbe8587ed47258e28bb2f9504bfb2ee670c1f3dbd2f0960f53",
         intel: "dceb7da17f5fd07f5f4bff02a9a6b98d89f5c7a296cb8af2ce54f4c3d2d15005"

  url "https://github.com/JetBrains/intellij-community/releases/download/pycharm%2F#{version}/pycharm-#{version}#{arch}.dmg"
  name "PyCharm OSS"
  desc "Open-source edition of PyCharm"
  homepage "https://github.com/JetBrains/intellij-community"

  # Not every GitHub release provides a file for macOS, so we check multiple
  # recent releases instead of only the "latest" release.
  livecheck do
    url :url
    regex(/^pycharm[._-]v?(\d+(?:\.\d+)+)#{arch}\.dmg$/i)
    strategy :github_releases do |json, regex|
      json.map do |release|
        next if release["draft"] || release["prerelease"]

        release["assets"]&.map do |asset|
          match = asset["name"]&.match(regex)
          next if match.blank?

          match[1]
        end
      end.flatten
    end
  end

  depends_on :macos

  app "PyCharm CE.app"

  zap trash: [
    "~/Library/Application Support/JetBrains/PyCharmCE*",
    "~/Library/Caches/JetBrains/PyCharmCE*",
    "~/Library/Logs/JetBrains/PyCharmCE*",
    "~/Library/Preferences/com.jetbrains.pycharm.ce.plist",
    "~/Library/Saved Application State/com.jetbrains.pycharm.ce.savedState",
  ]
end
