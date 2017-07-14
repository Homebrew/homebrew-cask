cask 'ableton-live-lite' do
  version '9.7.3'
  sha256 '53f5511bf85a925dc0c1fd7cc287d18d4879c6405b02169baa82df6fa5fd3caf'

  url "http://cdn2-downloads.ableton.com/channels/#{version}/ableton_live_lite_#{version}_64.dmg"
  name 'Ableton Live Lite'
  homepage 'https://www.ableton.com/en/products/live-lite/'

  app "Ableton Live #{version.major} Lite.app"
end
