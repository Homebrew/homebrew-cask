cask 'dbeaver-enterprise' do
  version '5.1.1'
  sha256 '7f42b824972087f6465fb1cfaf9796753acfdbd2dfd4b85494567febab3aeb74'

  url "https://dbeaver.com/files/#{version}/dbeaver-ee-#{version}-macos.dmg"
  appcast 'https://dbeaver.com/product/version.xml'
  name 'DBeaver Enterprise Edition'
  homepage 'https://dbeaver.com/'

  app 'DBeaverEE.app'

  caveats do
    depends_on_java '8+'
  end
end
