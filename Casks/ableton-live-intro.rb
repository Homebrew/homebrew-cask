cask 'ableton-live-intro' do
  version '10.1.14'
  sha256 'a1fe8ffc37e0acd90fffc6c59e4b54b02d04d53c9fac54086472d70f305982fa'

  url "https://cdn-downloads.ableton.com/channels/#{version}/ableton_live_intro_#{version}_64.dmg"
  appcast "https://www.ableton.com/en/release-notes/live-#{version.major}/"
  name 'Ableton Live Intro'
  homepage 'https://www.ableton.com/en/live/'

  depends_on macos: '>= :el_capitan'

  app "Ableton Live #{version.major} Intro.app"

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
