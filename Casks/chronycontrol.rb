cask 'chronycontrol' do
  version '1.1.2'
  sha256 'b171c2a201f3b9455668d2b283f5a7746b082ef28fcd04cc3aa266302606926c'

  url "https://www.whatroute.net/software/chronycontrol-#{version}.zip"
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

  zap delete: '/var/log/chrony'
end
