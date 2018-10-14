cask 'ableton-live-lite' do
  version '10.0.4'
  sha256 'ec34a283cd1bfceeef9f631d0f0a136f05037a5b086a511a45eba8cf917aa652'

  url "https://cdn-downloads.ableton.com/channels/#{version}/ableton_live_lite_#{version}_64.dmg"
  appcast "https://www.ableton.com/en/release-notes/live-#{version.major}/"
  name 'Ableton Live Lite'
  homepage 'https://www.ableton.com/en/products/live-lite/'

  app "Ableton Live #{version.major} Lite.app"
end
