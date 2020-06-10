cask 'ableton-live-lite' do
  version '10.1.14'
  sha256 '34bdf960b9cab27d80a1dba3d6cb8ec81137fe8c0b23c84f484e803de57dda0a'

  url "https://cdn-downloads.ableton.com/channels/#{version}/ableton_live_lite_#{version}_64.dmg"
  appcast "https://www.ableton.com/en/release-notes/live-#{version.major}/"
  name 'Ableton Live Lite'
  homepage 'https://www.ableton.com/en/products/live-lite/'

  depends_on macos: '>= :el_capitan'

  app "Ableton Live #{version.major} Lite.app"

  uninstall quit: 'com.ableton.live'

  zap trash: [
               '~/Library/Application Support/CrashReporter/Ableton *_*.plist',
               '~/Library/Application Support/CrashReporter/Live_*.plist',
               '~/Library/Application Support/Ableton',
               '~/Library/Caches/Ableton',
               '~/Library/Preferences/Ableton',
               '~/Library/Preferences/com.ableton.live.plist*',
               '~/Music/Ableton',
             ]
end
