cask "intellij-idea-oss" do
  arch arm: "-aarch64"

  version "2026.2"
  sha256 arm:   "d406df698ca0ab9e148926a2d8e1a62ed2c7fbf8248ac84e1f9623047416a09e",
         intel: "7d0c79523ce4354023a9daec542586be68f7e76ef25fa72d5a5626db2b41f19e"

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

  app "IntelliJ IDEA OSS.app"

  zap trash: [
    "~/Library/Application Support/JetBrains/IdeaIC#{version.major_minor}",
    "~/Library/Caches/JetBrains/IdeaIC#{version.major_minor}",
    "~/Library/Logs/JetBrains/IdeaIC#{version.major_minor}",
    "~/Library/Preferences/com.jetbrains.intellij.ce.plist",
    "~/Library/Saved Application State/com.jetbrains.intellij.ce.savedState",
  ]
end
