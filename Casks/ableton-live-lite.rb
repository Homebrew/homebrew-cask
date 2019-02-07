cask 'ableton-live-lite' do
  version '10.0.6'
  sha256 'af276e8ece04eb707204e9fbf7e6a554c60d36d32649762730c09210bd705cff'

  url "https://cdn-downloads.ableton.com/channels/#{version}/ableton_live_lite_#{version}_64.dmg"
  appcast "https://www.ableton.com/en/release-notes/live-#{version.major}/"
  name 'Ableton Live Lite'
  homepage 'https://www.ableton.com/en/products/live-lite/'

  app "Ableton Live #{version.major} Lite.app"
end
