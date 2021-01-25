cask "opera-gx" do
  version "72.0.3815.450"
  sha256 "7cae72cbab63133685597b3e501dadb6918356370f8fade3d9df541cca0c2447"

  url "https://get.geo.opera.com/pub/opera_gx/#{version}/mac/Opera_GX_#{version}_Setup.dmg"
  appcast "https://ftp.opera.com/pub/opera_gx/"
  name "Opera GX"
  desc "Alternate version of the Opera web browser to complement gaming"
  homepage "https://www.opera.com/gx"

  auto_updates true

  app "Opera GX.app"

  zap trash: "~/Library/Application Support/com.operasoftware.OperaGX"
end
