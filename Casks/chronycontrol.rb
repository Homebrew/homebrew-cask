cask 'chronycontrol' do
  version '1.3.0'
  sha256 'f605626dcb6581e1915342c22b7c425909738cdd548ba822f70d742d441da7d5'

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
