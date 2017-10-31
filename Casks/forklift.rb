cask 'forklift' do
  version '3.0.8'
  sha256 '366d58504b4cd9f2eccf5a1e85c146de51c41279b01519592c1e1cf750d67906'

  url "http://download.binarynights.com/ForkLift#{version}.zip"
  appcast "https://updates.binarynights.com/ForkLift#{version.major}/update.xml",
          checkpoint: '8ac4cf3eee7db69bf963f3ca5695b01f7ee825edeb9a267da697ed31c009cd3b'
  name 'ForkLift'
  homepage 'https://binarynights.com/forklift/'

  auto_updates true
  depends_on macos: '>= :el_capitan'

  app 'ForkLift.app'

  uninstall delete:    '/Library/PrivilegedHelperTools/com.binarynights.ForkLiftHelper',
            launchctl: [
                         'com.binarynights.ForkLiftHelper',
                         'com.binarynights.ForkLiftMini',
                       ],
            quit:      [
                         "com.binarynights.ForkLift-#{version.major}",
                         'com.binarynights.ForkLiftMini',
                       ]

  zap delete: [
                "~/Library/Caches/com.binarynights.ForkLift-#{version.major}",
                "~/Library/Cookies/com.binarynights.ForkLift-#{version.major}.binarycookies",
                '~/Library/Logs/ForkLift',
                '~/Library/Logs/ForkLiftMini',
                "~/Library/Saved Application State/com.binarynights.ForkLift-#{version.major}.savedState",
              ],
      trash:  [
                '~/Library/Application Support/ForkLift',
                "~/Library/Preferences/com.binarynights.ForkLift-#{version.major}.plist",
                '~/Library/Preferences/com.binarynights.ForkLiftMini.plist',
              ]
end
