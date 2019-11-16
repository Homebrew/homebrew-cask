cask 'ableton-live-lite' do
  version '10.1.4'
  sha256 '54f20eda463a3291904da9ddeceb167ce99c32f386a0e3d8dc7923f8dc9b93cd'

  url "https://cdn-downloads.ableton.com/channels/#{version}/ableton_live_lite_#{version}_64.dmg"
  appcast "https://www.ableton.com/en/release-notes/live-#{version.major}/"
  name 'Ableton Live Lite'
  homepage 'https://www.ableton.com/en/products/live-lite/'

  app "Ableton Live #{version.major} Lite.app"
end
