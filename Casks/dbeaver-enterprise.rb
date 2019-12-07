cask 'dbeaver-enterprise' do
  version '6.2.0'
  sha256 'f723a7d26ee82cbebbdf3bd7fe809f9d1c9f67f71b8266d4ea5712d802856ca8'

  url "https://dbeaver.com/files/#{version}/dbeaver-ee-#{version}-macos.dmg"
  appcast 'https://dbeaver.com/product/version.xml'
  name 'DBeaver Enterprise Edition'
  homepage 'https://dbeaver.com/'

  app 'DBeaverEE.app'

  caveats do
    depends_on_java '8+'
  end
end
