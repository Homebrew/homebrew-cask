cask "cadreader" do
  version "5.2.1.13"
  sha256 "df61dd2d344a9c80a1ea54918f34c8019e2121d8ab09eec3857dedec61936e46"

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

  app "CAD快速看图.app"

  zap trash: "~/Library/Preferences/com.glodonyuntu.cadreadermac.plist"

  caveats do
    requires_rosetta
  end
end
