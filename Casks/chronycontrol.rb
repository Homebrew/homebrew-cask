cask 'chronycontrol' do
  version '1.3.3'
  sha256 '99639880ba781ab81914b493aa895b629018bbae21c0346c98669c3354882e61'

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
