cask 'ableton-live' do
  version '10.1.5'
  sha256 '7a501294ce131cbb1558b1e3aa3343e3590072d9794bf1dc88966b21fc51e824'

  url "https://cdn-downloads.ableton.com/channels/#{version}/ableton_live_trial_#{version}_64.dmg"
  appcast "https://www.ableton.com/en/release-notes/live-#{version.major}/"
  name 'Ableton Live'
  homepage 'https://www.ableton.com/en/live/'

  depends_on macos: '>= :el_capitan'

  app "Ableton Live #{version.major} Trial.app"

  uninstall quit: 'com.ableton.live'

  zap trash: [
               '~/Library/Application Support/CrashReporter/Ableton *_*.plist',
               '~/Library/Application Support/Ableton',
               '~/Library/Caches/Ableton',
               '~/Library/Preferences/Ableton',
               '~/Library/Preferences/com.ableton.live.plist*',
               '~/Music/Ableton',
             ]
end
