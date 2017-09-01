cask 'ableton-live-lite' do
  version '9.7.4'
  sha256 '4e7b227c4af39b3b4c15190c178d55e7a615d9b8e2f4812d3c3b16381d640afc'

  url "http://cdn-downloads.ableton.com/channels/#{version}/ableton_live_lite_#{version}_64.dmg"
  name 'Ableton Live Lite'
  homepage 'https://www.ableton.com/en/products/live-lite/'

  app "Ableton Live #{version.major} Lite.app"
end
