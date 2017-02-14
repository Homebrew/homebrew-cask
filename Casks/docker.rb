cask 'docker' do
  version '1.13.1.15353'
  sha256 '137ac8f191f043759f09fef705219d97586cac1e742f34715d823aefca2a2591'

  url "https://download.docker.com/mac/stable/#{version}/Docker.dmg"
  appcast 'https://download.docker.com/mac/stable/appcast.xml',
          checkpoint: '166a08c5e8877e645850e78720c735a9492b6f75e0d9e81da1331c6521eba8a5'
  name 'Docker'
  homepage 'https://www.docker.com/products/docker'

  auto_updates true
  depends_on macos: '>= :yosemite'

  app 'Docker.app'

  uninstall launchctl: [
                         'com.docker.helper',
                         'com.docker.vmnetd',
                       ],
            delete:    '/Library/PrivilegedHelperTools/com.docker.vmnetd'

  zap delete: [
                '~/Library/Application Scripts/com.docker.helper',
                '~/Library/Caches/KSCrashReports/Docker',
                '~/Library/Caches/com.docker.docker',
                '~/Library/Caches/com.plausiblelabs.crashreporter.data/com.docker.docker',
                '~/Library/Containers/com.docker.docker',
                '~/Library/Containers/com.docker.helper',
                '~/Library/Group Containers/group.com.docker',
                '~/Library/Preferences/com.docker.docker.plist',
              ],
      rmdir:  [
                '~/Library/Caches/KSCrashReports',
                '~/Library/Caches/com.plausiblelabs.crashreporter.data',
              ]
end
