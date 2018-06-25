cask 'abyss-web-server' do
  version '2.11.8'
  sha256 '1df93374340a939c9bdb34e39eef06a317c7c1240d119784f5f75773f3e9da4c'

  url 'https://aprelium.com/data/abwsx1.dmg'
  appcast 'https://aprelium.com/abyssws/download.php'
  name 'Abyss Web Server'
  homepage 'https://aprelium.com/abyssws/'

  app 'Abyss Web Server/Abyss Web Server.app'

  preflight do
    set_permissions "#{staged_path}/Abyss Web Server/Abyss Web Server.app", '0755'
  end
end
