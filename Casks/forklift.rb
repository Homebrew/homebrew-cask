cask 'forklift' do
  version '3.0.6'
  sha256 'c2755a0538a8d9facf04af721368eab8bbb8b1568adf5b5132c7f78b7c1b36bd'

  url "http://download.binarynights.com/ForkLift#{version}.zip"
  appcast "https://updates.binarynights.com/ForkLift#{version.major}/update.xml",
          checkpoint: 'cb08a1fc585029ea18c8020780ae961403d86d99d89aebbf046ea61232e4c47b'
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
