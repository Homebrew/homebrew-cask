cask "license-control-center" do
  version "6.12.8.4319"
  sha256 :no_check

  url "https://download.steinberg.net/downloads/eLicenserControl.dmg",
      verified: "download.steinberg.net/downloads/"
  name "eLicenser Control Center"
  desc "Music software license manager"
  homepage "https://helpcenter.steinberg.de/hc/en-us/articles/360008841379"

  livecheck do
    url :url
    strategy :extract_plist
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
    "/Library/Application Support/Syncrosoft",
    "/Library/Application Support/eLicenser",
    "/Library/Syncrosoft",
    "/var/db/receipts/com.syncrosoft.*",
    "/var/db/receipts/com.eLicenser.*",
    "~/Library/Preferences/com.Syncrosoft.LCC.plist",
    "~/Library/Saved Application State/com.Syncrosoft.LCC.savedState",
  ]
end
