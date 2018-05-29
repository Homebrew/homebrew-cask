cask 'ableton-live-lite' do
  version '10.0.2'
  sha256 'e557de32d71c0b10c7eb1b5c8a699134f78e4298e496ba90a00684e6b815555d'

  url "http://cdn-downloads.ableton.com/channels/#{version}/ableton_live_lite_#{version}_64.dmg"
  name 'Ableton Live Lite'
  homepage 'https://www.ableton.com/en/products/live-lite/'

  app "Ableton Live #{version.major} Lite.app"
end
