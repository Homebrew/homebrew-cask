cask "opera-gx" do
  version "71.0.3770.310"
  sha256 "b8ffe09c006b653126aa45c9b3a4bb6f91ae5ccc4edab7797725fd64d0c492c7"

  url "https://get.geo.opera.com/pub/opera_gx/#{version}/mac/Opera_GX_#{version}_Setup.dmg"
  appcast "https://ftp.opera.com/pub/opera_gx/"
  name "Opera GX"
  desc "Cross-platform web browser that compliments gaming"
  homepage "https://www.opera.com/gx"

  auto_updates true

  app "Opera GX.app"

  zap trash: "~/Library/Application Support/com.operasoftware.OperaGX"
end
