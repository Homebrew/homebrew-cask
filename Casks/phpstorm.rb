cask 'phpstorm' do
  version '2016.1'
  sha256 'b30a67f22cfd331eec5599b4ae5957e10fb9f75b45e48a7ffd638adf77b2810d'

  url "https://download.jetbrains.com/webide/PhpStorm-#{version}.dmg"
  name 'PhpStorm'
  homepage 'https://www.jetbrains.com/phpstorm/'
  license :commercial

  app 'PhpStorm.app'

  zap delete: [
                "~/.WebIde#{version.major_minor.no_dots}",
                "~/Library/Caches/WebIde#{version.major_minor.no_dots}",
                "~/Library/Logs/WebIde#{version.major_minor.no_dots}",
                "~/Library/Application Support/WebIde#{version.major_minor.no_dots}",
                "~/Library/Preferences/WebIde#{version.major_minor.no_dots}",
                '~/Library/Preferences/com.jetbrains.PhpStorm.plist',
              ]
end
