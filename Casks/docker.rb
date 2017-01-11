cask 'docker' do
  version '1.12.6.14937'
  sha256 '06c37f809315855951f3d794c604c848abc1866662e5f3d85a0718b14fb57ec2'

  url "https://download.docker.com/mac/stable/#{version}/Docker.dmg"
  appcast 'https://download.docker.com/mac/stable/appcast.xml',
          checkpoint: '876fbc767ecc3c763e80c377e2b1cd9e6e0966b722a9f0f124a41fc16e95af4d'
  name 'Docker for Mac'
  homepage 'https://www.docker.com/products/docker'

  auto_updates true

  app 'Docker.app'

  uninstall launchctl: 'com.docker.vmnetd'

  zap delete: [
                '/Library/PrivilegedHelperTools/com.docker.vmnetd',
                '~/Library/Application Scripts/com.docker.helper',
                '~/Library/Caches/KSCrashReports/Docker',
                '~/Library/Caches/com.docker.docker',
                '~/Library/Caches/com.plausiblelabs.crashreporter.data/com.docker.docker',
                '~/Library/Containers/com.docker.docker',
                '~/Library/Containers/com.docker.helper',
                '~/Library/Group Containers/group.com.docker',
                '~/Library/Preferences/com.docker.docker.plist',
              ]
end
