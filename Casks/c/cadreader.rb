cask "cadreader" do
  version "5.1.9.11"
  sha256 "20bd924707e3a325e39269f6760d4ab2a1b04d1e5a2ecc7d6bbc0be2fed31144"

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
