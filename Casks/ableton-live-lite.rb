cask 'ableton-live-lite' do
  version '10.1.3'
  sha256 '81cc914eb710a9c8597c73c2063abd154b421849e56f90c630f1c41786d441a5'

  url "https://cdn-downloads.ableton.com/channels/#{version}/ableton_live_lite_#{version}_64.dmg"
  appcast "https://www.ableton.com/en/release-notes/live-#{version.major}/"
  name 'Ableton Live Lite'
  homepage 'https://www.ableton.com/en/products/live-lite/'

  app "Ableton Live #{version.major} Lite.app"
end
