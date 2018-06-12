cask 'chronycontrol' do
  version '1.2.1'
  sha256 '35e030839de309bdd842aca40f8960b8511f70b20f5433743a54ced739c98323'

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
