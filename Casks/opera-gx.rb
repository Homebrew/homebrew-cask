cask "opera-gx" do
  version "71.0.3770.317"
  sha256 "c8b3a840d36d3a01410e2ccb88f28cfec5cefe20a0e301d29667928b30dbab0a"

  url "https://get.geo.opera.com/pub/opera_gx/#{version}/mac/Opera_GX_#{version}_Setup.dmg"
  appcast "https://ftp.opera.com/pub/opera_gx/"
  name "Opera GX"
  desc "Cross-platform web browser that compliments gaming"
  homepage "https://www.opera.com/gx"

  auto_updates true

  app "Opera GX.app"

  zap trash: "~/Library/Application Support/com.operasoftware.OperaGX"
end
