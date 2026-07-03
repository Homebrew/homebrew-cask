cask "intellij-idea-oss" do
  arch arm: "-aarch64"

  version "2026.1.4"
  sha256 arm:   "0630e888527119cacdd6abc242e9ea3a0ce802951b46b23d8bcbd6caf0838db2",
         intel: "a505ea19627abdd56e083825d5c5ca8f8478d8743e42f49cb9ea8d8ea728a421"

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
