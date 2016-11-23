cask 'docker' do
  version '1.12.3.13776'
  sha256 '5e9676cedcd87dd0909bf7007bfba571354f61d728deb52a426a3be105ba3774'

  url "https://download.docker.com/mac/stable/#{version}/Docker.dmg"
  appcast 'https://download.docker.com/mac/stable/appcast.xml',
          checkpoint: '1104809b02843215c4b7acf1108fb958d1491811912c8ef20ab4bc718e82cce2'
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
