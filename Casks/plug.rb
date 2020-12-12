cask "plug" do
  version "2.0.19"
  sha256 "418d1adcf0ca099e7d02f9773df133c8c3276f1e65c47ff60f587861fa07d063"

  url "https://www.plugformac.com/updates/plug#{version.major}/Plug-latest.dmg"
  appcast "https://www.plugformac.com/updates/plug#{version.major}/sparklecast.xml"
  name "Plug"
  desc "Music player for The Hype Machine"
  homepage "https://www.plugformac.com/"

  app "Plug.app"
end
