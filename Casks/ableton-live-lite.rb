cask 'ableton-live-lite' do
  version '10.1.2'
  sha256 '67a4d70d4ce3b3d2de5499c40cddece8d8641b9ca105b11cd4a3734de5f2f1f9'

  url "https://cdn-downloads.ableton.com/channels/#{version}/ableton_live_lite_#{version}_64.dmg"
  appcast "https://www.ableton.com/en/release-notes/live-#{version.major}/"
  name 'Ableton Live Lite'
  homepage 'https://www.ableton.com/en/products/live-lite/'

  app "Ableton Live #{version.major} Lite.app"
end
