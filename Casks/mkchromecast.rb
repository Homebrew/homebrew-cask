cask "mkchromecast" do
  version "0.3.8.1"
  sha256 "f5283c183c38213b87d740deaf3794e65823c12383c43f27560a5afad2b3b178"

  # github.com/muammar/mkchromecast/ was verified as official when first introduced to the cask
  url "https://github.com/muammar/mkchromecast/releases/download/#{version}/mkchromecast_v#{version}.dmg"
  appcast "https://github.com/muammar/mkchromecast/releases.atom"
  name "mkchromecast"
  desc "Tool to cast audio/video to Google Cast and Sonos Devices"
  homepage "https://mkchromecast.com/"

  depends_on cask: "soundflower"

  app "mkchromecast.app"
end
