cask 'free-download-manager' do
  version '5.1'
  sha256 :no_check # required as upstream package is updated in-place

  url "https://dn3.freedownloadmanager.org/#{version.major}/#{version}-latest/fdm.dmg"
  name 'Free Download Manager'
  homepage 'https://www.freedownloadmanager.org/'

  depends_on macos: '>= :mavericks'

  app 'Free Download Manager.app'

  uninstall launchctl: [
                         "org.freedownloadmanager.fdm#{version.major}",
                         "org.freedownloadmanager.fdm#{version.major}.helper",
                       ],
            quit:      [
                         "org.freedownloadmanager.fdm#{version.major}",
                         "org.freedownloadmanager.fdm#{version.major}.launcher",
                       ]

  zap trash: [
               '~/Library/Application Support/Free Download Manager',
               "~/Library/Caches/org.freedownloadmanager.fdm#{version.major}",
               "~/Library/Preferences/org.freedownloadmanager.fdm#{version.major}.plist",
               "~/Library/Saved Application State/org.freedownloadmanager.fdm#{version.major}.savedState",
             ]
end
