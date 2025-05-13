cask "license-control-center" do
  version "6.12.11.1327"
  sha256 :no_check

  url "https://download.steinberg.net/downloads/eLicenserControl.dmg",
      verified: "download.steinberg.net/downloads/"
  name "eLicenser Control Center"
  desc "Music software license manager"
  homepage "https://helpcenter.steinberg.de/hc/en-us/articles/360008841379"

  livecheck do
    url "https://r.mb.steinberg.net/rc-elc-mac"
    strategy :header_match
  end

  installer manual: "eLicenserControlSetup.app"

  uninstall delete: [
    "/Applications/License Control Center.app",
    "/Library/Receipts/eLicenserControl.pkg",
    "/Library/Receipts/LCC.pkg",
    "/Library/Receipts/NOS.pkg",
    "/Library/Receipts/POS.pkg",
  ]

  zap trash: [
    "/Library/Application Support/eLicenser",
    "/Library/Application Support/Syncrosoft",
    "/Library/Syncrosoft",
    "/var/db/receipts/com.eLicenser.*",
    "/var/db/receipts/com.syncrosoft.*",
    "~/Library/Preferences/com.Syncrosoft.LCC.plist",
    "~/Library/Saved Application State/com.Syncrosoft.LCC.savedState",
  ]
end
