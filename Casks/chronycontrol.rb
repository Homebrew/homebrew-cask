cask 'chronycontrol' do
  version '1.3.1'
  sha256 '59b99b55d37d708191c31ce254a9ea02c7e00d4fd200ffb889ae1297b72aaedb'

  url "https://www.whatroute.net/software/chronycontrol-#{version}.zip"
  appcast 'https://www.whatroute.net/chronycontrolappcast.xml'
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
