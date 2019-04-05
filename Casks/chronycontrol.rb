cask 'chronycontrol' do
  version '1.3.2'
  sha256 '7bd9b33b71883d10dc3b9c6b06c92c53028f16f98eef302b265db3ecd943f5f1'

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
