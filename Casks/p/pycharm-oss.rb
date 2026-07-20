cask "pycharm-oss" do
  arch arm: "-aarch64"

  version "2026.2"
  sha256 arm:   "ec601a31ebf24200eff20f00747d490f321896803b58d67ebc56c25abde9cf1f",
         intel: "d974b3a3e7200e88c4c829faea00990d54fbd99430e709be5a303eb9cceeba51"

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

  zap trash: [
    "~/Library/Application Support/JetBrains/PyCharmCE*",
    "~/Library/Caches/JetBrains/PyCharmCE*",
    "~/Library/Logs/JetBrains/PyCharmCE*",
    "~/Library/Preferences/com.jetbrains.pycharm.ce.plist",
    "~/Library/Saved Application State/com.jetbrains.pycharm.ce.savedState",
  ]
end
