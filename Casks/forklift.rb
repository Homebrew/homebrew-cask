cask 'forklift' do
  version '3.2.8'
  sha256 'dba57d6b89827e130e1b682e4416d5c8326f67eadc79e5d8cdbd523cc3dbf87f'

  url "https://download.binarynights.com/ForkLift#{version}.zip"
  appcast "https://updates.binarynights.com/ForkLift#{version.major}/update.xml"
  name 'ForkLift'
  homepage 'https://binarynights.com/'

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

  zap trash: [
               '~/Library/Application Support/ForkLift',
               "~/Library/Caches/com.binarynights.ForkLift-#{version.major}",
               "~/Library/Cookies/com.binarynights.ForkLift-#{version.major}.binarycookies",
               '~/Library/Logs/ForkLift',
               '~/Library/Logs/ForkLiftMini',
               "~/Library/Preferences/com.binarynights.ForkLift-#{version.major}.plist",
               '~/Library/Preferences/com.binarynights.ForkLiftMini.plist',
               "~/Library/Saved Application State/com.binarynights.ForkLift-#{version.major}.savedState",
             ]
end
