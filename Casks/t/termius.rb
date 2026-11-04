cask "termius" do
  arch arm: "-arm64"

  version "10.4.0"
  sha256 :no_check

  url "https://autoupdate.termius.com/mac#{arch}/Termius.dmg"
  name "Termius"
  desc "SSH client"
  homepage "https://www.termius.com/"

  livecheck do
    url "https://autoupdate.termius.com/mac/latest-mac.yml"
    strategy :electron_builder
  end

  auto_updates true
  depends_on macos: :monterey

  app "Termius.app"

  uninstall delete: "/Library/Preferences/com.termius-dmg.mac.plist"

  zap trash: [
    "~/.termius",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.termius-dmg.mac.sfl*",
    "~/Library/Application Support/Termius",
    "~/Library/Logs/Termius",
    "~/Library/Preferences/com.termius-dmg.mac.plist",
    "~/Library/Saved Application State/com.termius-dmg.mac.savedState",
  ]
end
