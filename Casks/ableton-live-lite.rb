cask 'ableton-live-lite' do
  version '9.7.2'
  sha256 '2e6454bec98f66b8c7e947e5e794cbb555af6a41e5d5b04fc8d5ecfd70bf85fc'

  url "http://cdn2-downloads.ableton.com/channels/#{version}/ableton_live_lite_#{version}_64.dmg"
  name 'Ableton Live Lite'
  homepage 'https://www.ableton.com/en/products/live-lite/'

  app "Ableton Live #{version.major} Lite.app"
end
