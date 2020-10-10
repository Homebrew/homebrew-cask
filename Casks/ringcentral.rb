cask "ringcentral" do
  version "20.4.10"
  sha256 "7a346f13059a98082f06ee75aca0a3a64c0fdf96b639d5d4f555596e0dcb9728"

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
