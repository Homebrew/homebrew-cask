cask 'forklift' do
  version '3.0.4'
  sha256 '6c5cd09b9861500085f901a02007b1cbf81ed87e50aedfb303d307f41cf8c8ca'

  url "http://download.binarynights.com/ForkLift#{version}.zip"
  appcast "https://updates.binarynights.com/ForkLift#{version.major}/update.xml",
          checkpoint: '43e15816f416c285f04c81a141afdda5e51cdeef8f5fade43cb2c8d5783c45f5'
  name 'ForkLift'
  homepage 'https://binarynights.com/forklift/'

  auto_updates true
  depends_on macos: '>= :el_capitan'

  app 'ForkLift.app'

  zap delete: [
                '/Library/LaunchDaemons/com.binarynights.ForkLiftHelper.plist',
                '/Library/PrivilegedHelperTools/com.binarynights.ForkLiftHelper',
                '~/Library/Application Support/ForkLift',
                '~/Library/Caches/com.binarynights.ForkLift-3',
                '~/Library/Cookies/com.binarynights.ForkLift-3.binarycookies',
                '~/Library/Logs/ForkLift',
                '~/Library/Preferences/com.binarynights.ForkLift-3.plist',
                '~/Library/Preferences/com.binarynights.ForkLiftMini.plist',
                '~/Library/Saved Application State/com.binarynights.ForkLift-3.savedState',
              ]
end
