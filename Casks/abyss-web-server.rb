cask 'abyss-web-server' do
  version '2.12'
  sha256 'f93ae42987bc01817fef41a051e7fcc65ac13560a971f4e6f9e7301c3fcd4c37'

  url 'https://aprelium.com/data/abwsx1.dmg'
  appcast 'https://aprelium.com/abyssws/download.php'
  name 'Abyss Web Server'
  homepage 'https://aprelium.com/abyssws/'

  app 'Abyss Web Server/Abyss Web Server.app'

  preflight do
    set_permissions "#{staged_path}/Abyss Web Server/Abyss Web Server.app", '0755'
  end
end
