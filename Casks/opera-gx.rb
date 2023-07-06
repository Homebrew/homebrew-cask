cask "opera-gx" do
  version "100.0.4815.44"
  sha256 "2de339c0d1823089befd2a1dee30cd91e33f94c691a740077317162de17da974"

  url "https://get.geo.opera.com/pub/opera_gx/#{version}/mac/Opera_GX_#{version}_Setup.dmg"
  name "Opera GX"
  desc "Alternate version of the Opera web browser to complement gaming"
  homepage "https://www.opera.com/gx"

  livecheck do
    url "https://ftp.opera.com/pub/opera_gx/"
    regex(%r{href=["']?v?(\d+(?:\.\d+)+)/?["' >]}i)
  end

  auto_updates true

  app "Opera GX.app"

  zap trash: "~/Library/Application Support/com.operasoftware.OperaGX"
end
