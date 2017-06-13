cask 'chronycontrol' do
  version '1.1.6'
  sha256 '8e60ee8176f62af4bc733a576c51d5f2cb9f3294cf167924e7ea6ac33d2b6916'

  url "https://www.whatroute.net/software/chronycontrol-#{version}.zip"
  appcast 'https://whatroute.net/chronycontrol.html',
          checkpoint: 'ccecf5233d81787186f924b34ad1ee0ba7ed3cc4dcde82bb79b2f554c733edae'
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
