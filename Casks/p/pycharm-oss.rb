cask "pycharm-oss" do
  arch arm: "-aarch64"

  version "2026.1.3"
  sha256 arm:   "81a6d81d8bc2e701f69ea57924a88a662aefb56b6e7344e45137050a64415480",
         intel: "24659e8962df7979a10e0c7bc91a0a24ef76e7d6a1e1ba4b077c8b9cc3cd8c9a"

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
