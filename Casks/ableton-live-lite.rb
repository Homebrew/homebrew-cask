cask 'ableton-live-lite' do
  version '10.1.1'
  sha256 '4fe9ded48ce12b370cc3b4225ab947c3ef7cabf7ff97f07d7a4af6a1e5cf0c5d'

  url "https://cdn-downloads.ableton.com/channels/#{version}/ableton_live_lite_#{version}_64.dmg"
  appcast "https://www.ableton.com/en/release-notes/live-#{version.major}/"
  name 'Ableton Live Lite'
  homepage 'https://www.ableton.com/en/products/live-lite/'

  app "Ableton Live #{version.major} Lite.app"
end
