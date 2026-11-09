cask "cadreader" do
  version "5.2.4.16"
  sha256 "90ca5ca8d3a41ee26d5e0337a09a543d023e80d3a4acf8d41377a7dcbadcbbb4"

  url "https://yuntu-f.kuaicad.com/app/CADReaderMac_#{version}.dmg"
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
