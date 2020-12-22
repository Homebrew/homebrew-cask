cask "ringcentral" do
  version "20.4.31.2789"
  sha256 :no_check

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
