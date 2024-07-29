cask "mkchromecast" do
  version "0.3.8.1"
  sha256 "f5283c183c38213b87d740deaf3794e65823c12383c43f27560a5afad2b3b178"

  url "https://github.com/muammar/mkchromecast/releases/download/#{version}/mkchromecast_v#{version}.dmg",
      verified: "github.com/muammar/mkchromecast/"
  name "mkchromecast"
  desc "Tool to cast audio/video to Google Cast and Sonos Devices"
  homepage "https://mkchromecast.com/"

  deprecate! date: "2024-07-27", because: :unmaintained

  depends_on cask: "soundflower"

  app "mkchromecast.app"

  caveats do
    requires_rosetta
  end
end
