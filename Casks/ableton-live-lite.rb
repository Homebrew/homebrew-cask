cask 'ableton-live-lite' do
  version '10.0.3'
  sha256 '811aa0eac9cad0ae6a52045b2fafb5457f9c32586ba57bbef1b617641968c868'

  url "https://cdn-downloads.ableton.com/channels/#{version}/ableton_live_lite_#{version}_64.dmg"
  appcast "https://www.ableton.com/en/release-notes/live-#{version.major}/"
  name 'Ableton Live Lite'
  homepage 'https://www.ableton.com/en/products/live-lite/'

  app "Ableton Live #{version.major} Lite.app"
end
