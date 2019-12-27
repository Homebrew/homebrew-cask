cask 'dbeaver-enterprise' do
  version '6.3.0'
  sha256 'b4a4ad2c157fa70af8f2c00e05076d1d6dcdfa2fb49d4d07a944c786264b95fa'

  url "https://dbeaver.com/files/#{version}/dbeaver-ee-#{version}-macos.dmg"
  appcast 'https://dbeaver.com/product/version.xml'
  name 'DBeaver Enterprise Edition'
  homepage 'https://dbeaver.com/'

  app 'DBeaverEE.app'

  caveats do
    depends_on_java '8+'
  end
end
