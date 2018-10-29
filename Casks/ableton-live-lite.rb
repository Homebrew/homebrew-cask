cask 'ableton-live-lite' do
  version '10.0.5'
  sha256 '3afacecf373116337f4d48bc21b2ce720c11fa3925d47aa5ed83f1289aeb378a'

  url "https://cdn-downloads.ableton.com/channels/#{version}/ableton_live_lite_#{version}_64.dmg"
  appcast "https://www.ableton.com/en/release-notes/live-#{version.major}/"
  name 'Ableton Live Lite'
  homepage 'https://www.ableton.com/en/products/live-lite/'

  app "Ableton Live #{version.major} Lite.app"
end
