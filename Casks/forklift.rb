cask 'forklift' do
  version '3.2.7'
  sha256 '0e96fb834cb12628e3d9715361411fe9bf1a5e7fc28971920e55668ee2008cc7'

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
