cask "ringcentral" do
  version "20.4.20"
  sha256 "0e45af5e820da80ff2fb0dbc94274ac6ccc4d88390ab23d55160d5cc6880dc2e"

  url "https://app.ringcentral.com/downloads/RingCentral.pkg"
  appcast "https://app.ringcentral.com/download/latest-mac.yml",
          must_contain: version.major_minor_patch
  name "RingCentral"
  homepage "https://www.ringcentral.com/rcapp.html"

  pkg "RingCentral.pkg"

  uninstall delete:  "/Applications/RingCentral.app",
            quit:    "RingCentral",
            pkgutil: "com.ringcentral.glip"

  zap trash: [
    "~/Library/Application Support/RingCentral",
    "~/Library/Logs/RingCentral",
    "~/Library/Preferences/com.ringcentral.glip.plist",
    "~/Library/Saved Application State/com.ringcentral.glip.savedState",
  ]
end
