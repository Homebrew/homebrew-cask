cask 'abyss-web-server' do
  version '2.11.8'
  sha256 '1df93374340a939c9bdb34e39eef06a317c7c1240d119784f5f75773f3e9da4c'

  url 'https://aprelium.com/data/abwsx1.dmg'
  appcast 'https://aprelium.com/abyssws/download.php',
          checkpoint: 'ab483c7138e9bebe00cb87d3f2e14e6bcc27f71c055afef1ce938c9939cfc9f0'
  name 'Abyss Web Server'
  homepage 'https://aprelium.com/abyssws/'

  app 'Abyss Web Server/Abyss Web Server.app'

  preflight do
    set_permissions "#{staged_path}/Abyss Web Server/Abyss Web Server.app", '0755'
  end
end
