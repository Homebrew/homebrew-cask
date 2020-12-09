cask "ringcentral" do
  version "20.4.30"
  sha256 "bac12f85a45c2a5a4522463a6c75fd9507fcdbe5b3e7ef7a58c02c4290677222"

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
