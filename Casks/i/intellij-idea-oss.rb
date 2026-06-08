cask "intellij-idea-oss" do
  arch arm: "-aarch64"

  version "2026.1.3"
  sha256 arm:   "dc6ecad544cd1591e8743f429cffa62d607a462caa2b872dcb6f368c98d31c7c",
         intel: "8ea9292c99ddd24bb38d692b7f8183a9cd6a756b6c06627ce01fe539c60dfbb9"

  url "https://github.com/JetBrains/intellij-community/releases/download/idea%2F#{version}/idea-#{version}#{arch}.dmg"
  name "IntelliJ IDEA OSS"
  desc "Open-source edition of IntelliJ IDEA"
  homepage "https://github.com/JetBrains/intellij-community"

  # Not every GitHub release provides a file for macOS, so we check multiple
  # recent releases instead of only the "latest" release.
  livecheck do
    url :url
    regex(/^idea[._-]v?(\d+(?:\.\d+)+)#{arch}\.dmg$/i)
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

  app "IntelliJ IDEA CE.app"

  zap trash: [
    "~/Library/Application Support/JetBrains/IdeaIC#{version.major_minor}",
    "~/Library/Caches/JetBrains/IdeaIC#{version.major_minor}",
    "~/Library/Logs/JetBrains/IdeaIC#{version.major_minor}",
    "~/Library/Preferences/com.jetbrains.intellij.ce.plist",
    "~/Library/Saved Application State/com.jetbrains.intellij.ce.savedState",
  ]
end
