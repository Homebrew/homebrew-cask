cask 'dbeaver-enterprise' do
  version '6.0.0'
  sha256 'eac84353154ae0b21d633b8b7b6382200659a0cace78bb5ec5c1a56b89cfa4a7'

  url "https://dbeaver.com/files/#{version}/dbeaver-ee-#{version}-macos.dmg"
  appcast 'https://dbeaver.com/product/version.xml'
  name 'DBeaver Enterprise Edition'
  homepage 'https://dbeaver.com/'

  app 'DBeaverEE.app'

  caveats do
    depends_on_java '8+'
  end
end
