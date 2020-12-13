cask "opera-gx" do
  version "71.0.3770.456"
  sha256 "a7019793c8d04906a741f70e04447b1bba41d1e4b2f5f52d2ed9cf9d13f32760"

  url "https://get.geo.opera.com/pub/opera_gx/#{version}/mac/Opera_GX_#{version}_Setup.dmg"
  appcast "https://ftp.opera.com/pub/opera_gx/"
  name "Opera GX"
  desc "Cross-platform web browser that compliments gaming"
  homepage "https://www.opera.com/gx"

  auto_updates true

  app "Opera GX.app"

  zap trash: "~/Library/Application Support/com.operasoftware.OperaGX"
end
