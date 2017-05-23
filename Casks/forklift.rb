cask 'forklift' do
  version '3.0.5'
  sha256 'cf758690440477d6205fd2ef11c2421e85f13351b34426d4b5a9b677e7bb3d18'

  url "http://download.binarynights.com/ForkLift#{version}.zip"
  appcast "https://updates.binarynights.com/ForkLift#{version.major}/update.xml",
          checkpoint: 'd479ec688823ab9a82f189da6edb7a6fd912c85e9165765f4a92671fc4197714'
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
