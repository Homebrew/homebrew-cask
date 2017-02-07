cask 'docker' do
  version '1.13.0.15072'
  sha256 '1ff2a59d36348c2e1df73318e366624b04d42861e81af3d1b72effd803402641'

  url "https://download.docker.com/mac/stable/#{version}/Docker.dmg"
  appcast 'https://download.docker.com/mac/stable/appcast.xml',
          checkpoint: 'df585a51327110755eb8d9aba8c42b559c91b41d98563604c8d448f3f2714906'
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
