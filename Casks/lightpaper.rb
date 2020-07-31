cask "lightpaper" do
  version "1.4.2"
  sha256 "7e1f7f8304bd2b299e7973a34d55e9c5b6b57b9987f51c3e2200897150c06923"

  # hockeyapp.net/api/2/apps/789cfa8846464727ae0fdb176ec8d3c8 was verified as official when first introduced to the cask
  url "https://rink.hockeyapp.net/api/2/apps/789cfa8846464727ae0fdb176ec8d3c8?format=zip"
  appcast "https://rink.hockeyapp.net/api/2/apps/789cfa8846464727ae0fdb176ec8d3c8"
  name "LightPaper"
  homepage "https://getlightpaper.com/"

  app "LightPaper.app"
end
