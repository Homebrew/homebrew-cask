cask 'docker' do
  version '17.03.0-ce'
  sha256 'ed670f3a456289ce887ce8ac54f47a5d17df26353beceb463dc09c4709973a3d'

  url 'https://download.docker.com/mac/stable/Docker.dmg'
  appcast 'https://github.com/docker/docker/releases.atom',
          checkpoint: '3a35ac575dfb9c14759a839b30a65d12a2fbf8d6c7c9129830dd24c5f223cbc3'
  name 'Docker Community Edition'
  name 'Docker CE'
  homepage 'https://www.docker.com/community-edition'

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
