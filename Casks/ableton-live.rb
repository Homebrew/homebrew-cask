cask 'ableton-live' do
  version '10.1.6'
  sha256 '26741d72756c71a7b8891fd5b97f3804699f74d000dc00157a054d80b501d847'

  url "https://cdn-downloads.ableton.com/channels/#{version}/ableton_live_trial_#{version}_64.dmg"
  appcast "https://www.ableton.com/en/release-notes/live-#{version.major}/"
  name 'Ableton Live'
  homepage 'https://www.ableton.com/en/live/'

  depends_on macos: '>= :el_capitan'

  app "Ableton Live #{version.major} Trial.app"

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
