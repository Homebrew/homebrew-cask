cask "pycharm-oss" do
  arch arm: "-aarch64"

  version "2026.2.4"
  sha256 arm:   "09be66296d9406dea285873ad08468942f33c3a4a8ea6e086cb4f84307ab38ab",
         intel: "5b12cc7d86da22478bbe9ab8072470f8240de5a9ea6941bd9fb142916d3d017e"

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
