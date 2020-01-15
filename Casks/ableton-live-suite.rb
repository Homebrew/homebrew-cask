cask 'ableton-live-suite' do
  version '10.1.7'
  sha256 '82c8c145bfb644978c4ad7c363e9e4ac892f0d2f8fad261bc33799bd6f9dcc0d'

  url "https://cdn-downloads.ableton.com/channels/#{version}/ableton_live_suite_#{version}_64.dmg"
  appcast "https://www.ableton.com/en/release-notes/live-#{version.major}/"
  name 'Ableton Live Suite'
  homepage 'https://www.ableton.com/en/live/'

  depends_on macos: '>= :el_capitan'

  app "Ableton Live #{version.major} Suite.app"

  uninstall quit: 'com.ableton.live'

  zap trash: [
               '/Library/Logs/DiagnosticReports/Max_*.*_resource.diag',
               '~/Library/Application Support/CrashReporter/Ableton *_*.plist',
               '~/Library/Application Support/CrashReporter/Live_*.plist',
               '~/Library/Application Support/CrashReporter/Max_*.plist',
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
