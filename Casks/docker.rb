cask 'docker' do
  if MacOS.version <= :el_capitan
    version '18.06.1-ce-mac73,26764'
    sha256 '3429eac38cf0d198039ad6e1adce0016f642cdb914a34c67ce40f069cdb047a5'
  else
    version '2.3.0.2,45183'
    sha256 'ed187365b2b9c6de0ddaa1146c86796f0f3a2f6af1cb2693211e600aad233f35'
  end

  url "https://download.docker.com/mac/stable/#{version.after_comma}/Docker.dmg"
  appcast 'https://download.docker.com/mac/stable/appcast.xml'
  name 'Docker Desktop'
  name 'Docker Community Edition'
  name 'Docker CE'
  homepage 'https://www.docker.com/community-edition'

  auto_updates true

  app 'Docker.app'

  uninstall delete:    [
                         '/Library/PrivilegedHelperTools/com.docker.vmnetd',
                         '/private/var/tmp/com.docker.vmnetd.socket',
                         '/usr/local/bin/docker',
                         '/usr/local/bin/docker-compose',
                         '/usr/local/bin/docker-credential-desktop',
                         '/usr/local/bin/docker-credential-osxkeychain',
                         '/usr/local/bin/hyperkit',
                         '/usr/local/bin/kubectl',
                         '/usr/local/bin/kubectl.docker',
                         '/usr/local/bin/notary',
                         '/usr/local/bin/vpnkit',
                       ],
            launchctl: [
                         'com.docker.helper',
                         'com.docker.vmnetd',
                       ],
            quit:      'com.docker.docker'

  zap trash: [
               '/usr/local/bin/docker-compose.backup',
               '/usr/local/bin/docker.backup',
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
