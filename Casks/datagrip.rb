cask 'datagrip' do
  version '1.0.2'
  sha256 '91585f6d83fb0f5673f9f6b3748c0201b14501e4cd23681eb10ef7d7a6ed565c'

  url "https://download.jetbrains.com/datagrip/datagrip-#{version}-custom-jdk-bundled.dmg"
  name 'DataGrip'
  homepage 'https://www.jetbrains.com/datagrip/'
  license :commercial

  app 'DataGrip.app'

  zap delete: [
                "~/.DataGrip#{version.major_minor.no_dots}",
                '~/Library/Preferences/com.jetbrains.DataGrip.plist',
                "~/Library/Preferences/DataGrip#{version.major_minor.no_dots}",
                "~/Library/Application Support/DataGrip#{version.major_minor.no_dots}",
                "~/Library/Caches/DataGrip#{version.major_minor.no_dots}",
                "~/Library/Logs/DataGrip#{version.major_minor.no_dots}",
              ]
end
