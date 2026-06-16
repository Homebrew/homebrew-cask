cask "cadreader" do
  version "5.2.3.15"
  sha256 "1b1c1a035cd438a6cfe42f0525923cafed0d2b864119ba087e3024a2bb68e5c4"

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
