cask "augur" do
  version "1.16.11"
  sha256 "127a57ed9e3e0b2bd0451f0b097d5998f3e59acb7c4b9d424166f460a1776411"

  url "https://github.com/AugurProject/augur-app/releases/download/v#{version}/mac-Augur-#{version}.dmg"
  name "Augur"
  desc "App that bundles Augur UI and Augur Node together and deploys them locally"
  homepage "https://github.com/AugurProject/augur-app/"

  app "augur.app"

  zap trash: [
    "~/Library/Application Support/augur",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/net.augur.augur.sfl*",
    "~/Library/Logs/augur",
    "~/Library/Preferences/net.augur.augur.plist",
    "~/Library/Saved Application State/net.augur.augur.savedState",
  ]

  caveats do
    requires_rosetta
  end
end
