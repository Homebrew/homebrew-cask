cask "opgg" do
  version "3.4.2"
  sha256 "46c49d03d0bc41e28a3910a2c419a48dba11782bfd23fc075779e4d5a0261e67"

  url "https://desktop-patch.op.gg/update/general/OP.GG-#{version}-universal.dmg"
  name "OP.GG Desktop"
  desc "Game records and champion analysis"
  homepage "https://op.gg/desktop/"

  livecheck do
    url "https://desktop-patch.op.gg/update/general/latest-mac.yml"
    strategy :electron_builder
  end

  auto_updates true
  depends_on macos: :monterey

  app "OP.GG.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/desktop.op.gg.sfl*",
    "~/Library/Application Support/opgg-electron-app",
    "~/Library/Caches/desktop.op.gg",
    "~/Library/Caches/desktop.op.gg.ShipIt",
    "~/Library/HTTPStorages/desktop.op.gg",
    "~/Library/Preferences/desktop.op.gg.plist",
    "~/Library/Saved Application State/desktop.op.gg.savedState",
  ]
end
