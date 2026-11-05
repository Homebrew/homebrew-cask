cask "pycharm-oss" do
  arch arm: "-aarch64"

  version "2026.3"
  sha256 arm:   "033d0f161c56fe8b731b40f4e2ca9449bef2eff58a819f86f2c903692b97b9b6",
         intel: "2be4d15bde0263a9e60b087e3d13bcf9b0b356bfafcd7c28e49a71a4608ffafa"

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
