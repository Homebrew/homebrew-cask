cask 'chronycontrol' do
  version '1.2.2'
  sha256 'f00367056ecc6b8b2f03a961b8f64c562b8fc15c9f0816950fe1574d26990b7e'

  url "https://www.whatroute.net/software/chronycontrol-#{version}.zip"
  appcast 'https://whatroute.net/chronycontrol.html'
  name 'ChronyControl'
  homepage 'https://whatroute.net/chronycontrol.html'

  app 'ChronyControl.app'

  uninstall launchctl: [
                         'org.tuxfamily.chronyd',
                         'org.tuxfamily.chronyc',
                       ],
            delete:    [
                         '/etc/chrony.d',
                         '/var/db/chrony',
                         '/Library/LaunchDaemons/org.tuxfamily.chronyd',
                         '/Library/LaunchDaemons/org.tuxfamily.chronyc',
                       ]

  zap trash: '/var/log/chrony'
end
