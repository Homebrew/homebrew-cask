cask "intellij-idea-oss" do
  arch arm: "-aarch64"

  version "2026.2.1"
  sha256 arm:   "9e84e316701baedae37b7ecf90121701b118dee56f8f60e0032282d282c3951a",
         intel: "1c104ed3d44003be644a7111ae8f07513788d34bbfd81f9d40de324acf5498be"

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
