cask 'forklift' do
  version '3.0.9'
  sha256 'fb9742731476ead8af7444c9cf65783b805ae0b5c42a51f75712424a2fe1eafa'

  url "http://download.binarynights.com/ForkLift#{version}.zip"
  appcast "https://updates.binarynights.com/ForkLift#{version.major}/update.xml",
          checkpoint: '752b4273c59ad2e7dfd2e3886990540201fffd7126c25ce9982def9cce3a848a'
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
