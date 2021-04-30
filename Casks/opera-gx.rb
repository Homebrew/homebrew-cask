cask "opera-gx" do
  version "73.0.3856.434"
  sha256 "09750f661112dd21392665059e8e43f75897eedb41589dfbe83bc693f9691601"

  url "https://get.geo.opera.com/pub/opera_gx/#{version}/mac/Opera_GX_#{version}_Setup.dmg"
  name "Opera GX"
  desc "Alternate version of the Opera web browser to complement gaming"
  homepage "https://www.opera.com/gx"

  livecheck do
    url "https://ftp.opera.com/pub/opera_gx/"
    strategy :page_match
    regex(/href=['"]?(\d+(?:\.\d+)*)['"]?/i)
  end

  auto_updates true

  app "Opera GX.app"

  zap trash: "~/Library/Application Support/com.operasoftware.OperaGX"
end
