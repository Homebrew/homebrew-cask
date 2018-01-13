cask 'docker' do
  version '17.12.0-ce-mac47,21805'
  sha256 '27273b651c18bac249be6a218a0d018fd021235010dcc2dadb0fe42b23e6e58f'

  url "https://download.docker.com/mac/stable/#{version.after_comma}/Docker.dmg"
  appcast 'https://download.docker.com/mac/stable/appcast.xml',
          checkpoint: '1390edc8934a76559152cde247dc9cff008d337456f498269d23418f12f463df'
  name 'Docker Community Edition'
  name 'Docker CE'
  homepage 'https://www.docker.com/community-edition'

  auto_updates true
  depends_on macos: '>= :yosemite'

  app 'Docker.app'

  uninstall delete:    [
                         '/Library/PrivilegedHelperTools/com.docker.vmnetd',
                         '/usr/local/bin/docker',
                         '/usr/local/bin/docker-compose',
                         '/usr/local/bin/docker-credential-osxkeychain',
                         '/usr/local/bin/docker-machine',
                         '/usr/local/bin/hyperkit',
                         '/usr/local/bin/notary',
                         '/usr/local/bin/vpnkit',
                       ],
            launchctl: [
                         'com.docker.helper',
                         'com.docker.vmnetd',
                       ],
            quit:      'com.docker.docker'

  zap trash: [
               '~/Library/Application Scripts/com.docker.helper',
               '~/Library/Caches/KSCrashReports/Docker',
               '~/Library/Caches/com.docker.docker',
               '~/Library/Caches/com.plausiblelabs.crashreporter.data/com.docker.docker',
               '~/Library/Containers/com.docker.docker',
               '~/Library/Containers/com.docker.helper',
               '~/Library/Group Containers/group.com.docker',
               '~/Library/Preferences/com.docker.docker.plist',
             ],
      rmdir: [
               '~/Library/Caches/KSCrashReports',
               '~/Library/Caches/com.plausiblelabs.crashreporter.data',
             ]
end
