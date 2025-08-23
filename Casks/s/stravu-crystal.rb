cask "stravu-crystal" do
  version "0.2.2"
  sha256 "f12e5865ef6cb3047dd3ba62c7e69ecc62be2fe8f9f1860fabfee5896d80537e"

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
