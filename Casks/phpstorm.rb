cask 'phpstorm' do
  version '2016.1'
  sha256 'b30a67f22cfd331eec5599b4ae5957e10fb9f75b45e48a7ffd638adf77b2810d'

  url "https://download.jetbrains.com/webide/PhpStorm-#{version}.dmg"
  name 'PhpStorm'
  homepage 'https://www.jetbrains.com/phpstorm/'
  license :commercial

  app 'PhpStorm.app'

  zap delete: [
    "~/Library/Caches/#{name}#{version}",
    "~/Library/Logs/#{name}#{version}",
    "~/Library/Application Support/#{name}#{version}",
    "~/Library/Preferences/#{name}#{version}",
  ]
end
