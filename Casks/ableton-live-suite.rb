cask 'ableton-live-suite' do
  version '10.1.1'
  sha256 '9770ebe0f514339fbacd4de114f93a4fd978f26f388f9839162b38a304e74aae'

  url "https://cdn-downloads.ableton.com/channels/#{version}/ableton_live_suite_#{version}_64.dmg"
  appcast "https://www.ableton.com/en/release-notes/live-#{version.major}/"
  name 'Ableton Live Suite'
  homepage 'https://www.ableton.com/en/live/'

  depends_on macos: '>= :el_capitan'

  app "Ableton Live #{version.major} Suite.app"

  uninstall quit: 'com.ableton.live'

  zap trash: [
               '~/Library/Application Support/CrashReporter/Ableton *_*.plist',
               '~/Library/Application Support/Ableton',
               "~/Library/Application Support/Cycling '74",
               '~/Library/Caches/Ableton',
               '~/Library/Preferences/Ableton',
               '~/Library/Preferences/com.ableton.live.plist*',
               '~/Library/Preferences/com.cycling74.Max*.plist*',
               '~/Music/Ableton',
               '~/Documents/Max [0-9]',
               '/Users/Shared/Max [0-9]',
             ]
end
