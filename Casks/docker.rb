cask 'docker' do
  version '1.12.5.14777'
  sha256 'cee1a02680399f21f42464b31473ce36629152c4771ecb8cf928b47a9d17bcac'

  url "https://download.docker.com/mac/stable/#{version}/Docker.dmg"
  appcast 'https://download.docker.com/mac/stable/appcast.xml',
          checkpoint: '4c0eec043eb27e306c4111ec2a6cbf1f05e284b15896a820e44cba33417c7c0f'
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
