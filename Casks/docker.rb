cask 'docker' do
  version '17.06.0-ce-mac19,18663'
  sha256 '213664b33af509ea30441362490c6ad4c1f90bd30e12045195b63242f36c5978'

  url "https://download.docker.com/mac/stable/#{version.after_comma}/Docker.dmg"
  appcast 'https://download.docker.com/mac/stable/appcast.xml',
          checkpoint: '79e2eb3761e26b86309f1748efc163c7d9af0fe3a64c581ace4944d645e614aa'
  name 'Docker Community Edition'
  name 'Docker CE'
  homepage 'https://www.docker.com/community-edition'

  auto_updates true
  depends_on macos: '>= :yosemite'

  app 'Docker.app'

  uninstall delete:    '/Library/PrivilegedHelperTools/com.docker.vmnetd',
            launchctl: [
                         'com.docker.helper',
                         'com.docker.vmnetd',
                       ],
            quit:      'com.docker.docker'

  zap delete: [
                '~/Library/Application Scripts/com.docker.helper',
                '~/Library/Caches/KSCrashReports/Docker',
                '~/Library/Caches/com.docker.docker',
                '~/Library/Caches/com.plausiblelabs.crashreporter.data/com.docker.docker',
                '~/Library/Containers/com.docker.docker',
                '~/Library/Containers/com.docker.helper',
                '~/Library/Group Containers/group.com.docker',
              ],
      trash:  '~/Library/Preferences/com.docker.docker.plist',
      rmdir:  [
                '~/Library/Caches/KSCrashReports',
                '~/Library/Caches/com.plausiblelabs.crashreporter.data',
              ]
end
