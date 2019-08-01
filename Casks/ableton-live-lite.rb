cask 'ableton-live-lite' do
  version '10.1'
  sha256 'fd7f434c7912f44169c8538f14dd62d85954e580405f4ed62be75db6356d0865'

  url "https://cdn-downloads.ableton.com/channels/#{version}/ableton_live_lite_#{version}_64.dmg"
  appcast "https://www.ableton.com/en/release-notes/live-#{version.major}/"
  name 'Ableton Live Lite'
  homepage 'https://www.ableton.com/en/products/live-lite/'

  app "Ableton Live #{version.major} Lite.app"
end
