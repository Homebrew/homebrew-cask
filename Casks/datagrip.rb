cask 'datagrip' do
  version '2016.1'
  sha256 'f238284e831f7e7216c11591c7ca1bb4765aa7a42fa0246748fb434eeeeb58e5'

  url "https://download.jetbrains.com/datagrip/datagrip-#{version}.dmg"
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
