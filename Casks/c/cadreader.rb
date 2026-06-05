cask "cadreader" do
  version "5.2.2.14"
  sha256 "3f1d78aca7aa121936b4d83d118d9d56f35a57359ac46f700255dac10972d2bb"

  url "https://yuntu-f.kuaicad.com/app/CADReaderMac_#{version}.dmg",
      verified: "yuntu-f.kuaicad.com/app/"
  name "CADReader"
  name "CAD快速看图"
  desc "CAD drawing viewer"
  homepage "https://cad.everdrawing.com/"

  livecheck do
    url "https://cad.everdrawing.com/update/version/info/cadmac"
    strategy :json do |json|
      json.dig("body", "version")
    end
  end

  depends_on :macos

  app "CAD快速看图.app"

  zap trash: "~/Library/Preferences/com.glodonyuntu.cadreadermac.plist"
end
