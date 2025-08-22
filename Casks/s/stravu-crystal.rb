cask "stravu-crystal" do
  version "0.2.1"
  sha256 "6165dc74b89e51301b0bc6fb6397228e6042d6bd5e8119c5b7769714d65a7fc7"

  url "https://github.com/stravu/crystal/releases/download/v#{version}/Crystal-#{version}-macOS-universal.dmg"
  name "Crystal"
  desc "Run multiple Claude Code instances simultaneously using git worktrees"
  homepage "https://github.com/stravu/crystal"

  depends_on macos: ">= :big_sur"

  app "Crystal.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.stravu.crystal.sfl*",
    "~/Library/Application Support/Crystal",
    "~/Library/Caches/com.stravu.crystal",
    "~/Library/Caches/com.stravu.crystal.ShipIt",
    "~/Library/HTTPStorages/com.stravu.crystal",
    "~/Library/Logs/Crystal",
    "~/Library/Preferences/com.stravu.crystal.plist",
    "~/Library/Saved Application State/com.stravu.crystal.savedState",
  ]
end
