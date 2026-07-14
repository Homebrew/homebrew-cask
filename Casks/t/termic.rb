cask "termic" do
  version "0.22.0"
  sha256 "1551e976048002e9b40f93c310bab43271fc69bf3c8a1815bd8565fddc207455"

  url "https://github.com/simion/termic/releases/download/v#{version}/Termic_#{version}_universal.dmg",
      verified: "github.com/simion/termic/"
  name "Termic"
  desc "Run claude, gemini, and codex in parallel git worktrees"
  homepage "https://termic.dev/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: :monterey

  app "Termic.app"

  zap trash: [
    "~/Library/Application Support/com.simion.termic",
    "~/Library/Application Support/termic",
    "~/Library/Caches/com.simion.termic",
    "~/Library/Caches/termic",
    "~/Library/HTTPStorages/com.simion.termic",
    "~/Library/Preferences/com.simion.termic.plist",
    "~/Library/Saved Application State/com.simion.termic.savedState",
    "~/Library/WebKit/com.simion.termic",
  ]
end
