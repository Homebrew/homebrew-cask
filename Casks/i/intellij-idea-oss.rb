cask "intellij-idea-oss" do
  arch arm: "-aarch64"

  version "2026.3"
  sha256 arm:   "35c22051280542990eacfa00104f5b84569bd383eb60533b2c943bfdd18ee255",
         intel: "7cb030be01b1e26c1ea8827c2018ae538b227aeaf64f1bfe533ef3d8c245e97a"

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

  uninstall quit: "com.jetbrains.intellij.ce"

  zap trash: [
    "~/Library/Application Support/JetBrains/IdeaIC#{version.major_minor}",
    "~/Library/Caches/JetBrains/IdeaIC#{version.major_minor}",
    "~/Library/Logs/JetBrains/IdeaIC#{version.major_minor}",
    "~/Library/Preferences/com.jetbrains.intellij.ce.plist",
    "~/Library/Saved Application State/com.jetbrains.intellij.ce.savedState",
  ]
end
