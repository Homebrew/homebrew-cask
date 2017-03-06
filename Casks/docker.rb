cask 'docker' do
  version '17.03.0'
  sha256 'ed670f3a456289ce887ce8ac54f47a5d17df26353beceb463dc09c4709973a3d'

  url 'https://download.docker.com/mac/stable/Docker.dmg'
  appcast 'https://github.com/docker/docker/releases.atom',
          checkpoint: '6a5a4e061449ba35f3a14a7f87c60826d35c2db6a93d864f966eb76420d0c0a8'
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
