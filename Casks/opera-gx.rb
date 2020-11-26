cask "opera-gx" do
  version "71.0.3770.441"
  sha256 "06854efb0af34e3507ef2851d42069fd0d41af2ad6c16fefa73c59be7ecfd317"

  url "https://get.geo.opera.com/pub/opera_gx/#{version}/mac/Opera_GX_#{version}_Setup.dmg"
  appcast "https://ftp.opera.com/pub/opera_gx/"
  name "Opera GX"
  desc "Cross-platform web browser that compliments gaming"
  homepage "https://www.opera.com/gx"

  auto_updates true

  app "Opera GX.app"

  zap trash: "~/Library/Application Support/com.operasoftware.OperaGX"
end
