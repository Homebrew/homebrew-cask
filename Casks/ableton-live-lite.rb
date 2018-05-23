cask 'ableton-live-lite' do
  version '10.0.1'
  sha256 'b4c0d7dfc4e05eddf1cab6a831962f8aad355fafc36c512112dc0e820a2f2c61'

  url "http://cdn-downloads.ableton.com/channels/#{version}/ableton_live_lite_#{version}_64.dmg"
  name 'Ableton Live Lite'
  homepage 'https://www.ableton.com/en/products/live-lite/'

  app "Ableton Live #{version.major} Lite.app"
end
