cask 'datagrip' do
  version '1.0.3'
  sha256 '8aa557c3eef9749f82ada203af3f8f51e2601230cb169589da26c2d2449534bd'

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
