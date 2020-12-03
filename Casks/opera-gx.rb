cask "opera-gx" do
  version "71.0.3770.449"
  sha256 "9902751f101bba6ab17cd5ecb157c974b62d1295702f4b4c83c971cf7244306a"

  url "https://get.geo.opera.com/pub/opera_gx/#{version}/mac/Opera_GX_#{version}_Setup.dmg"
  appcast "https://ftp.opera.com/pub/opera_gx/"
  name "Opera GX"
  desc "Cross-platform web browser that compliments gaming"
  homepage "https://www.opera.com/gx"

  auto_updates true

  app "Opera GX.app"

  zap trash: "~/Library/Application Support/com.operasoftware.OperaGX"
end
