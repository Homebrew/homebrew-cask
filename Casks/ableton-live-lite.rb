cask 'ableton-live-lite' do
  version '9.7.5'
  sha256 'c91876c86e06717c86b4e1df7168c9916c789a7e0eb2ea2d43fec3abe892c183'

  url "http://cdn-downloads.ableton.com/channels/#{version}/ableton_live_lite_#{version}_64.dmg"
  name 'Ableton Live Lite'
  homepage 'https://www.ableton.com/en/products/live-lite/'

  app "Ableton Live #{version.major} Lite.app"
end
