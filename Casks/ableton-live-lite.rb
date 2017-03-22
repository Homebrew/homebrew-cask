cask 'ableton-live-lite' do
  version '9.7.1'
  sha256 '8cc2779b3888a74aa481ef6729564ad7938180b5fd9e1c07c79bad32708d26b1'

  url "http://cdn2-downloads.ableton.com/channels/#{version}/ableton_live_lite_#{version}_64.dmg"
  name 'Ableton Live Lite'
  homepage 'https://www.ableton.com/en/products/live-lite/'

  app "Ableton Live #{version.major} Lite.app"
end
