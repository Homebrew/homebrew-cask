cask 'dbeaver-enterprise' do
  version '7.0.0'
  sha256 '5981a0896a8823880a88c6cf5417ca9c7b927adb844dfef91dcb819c9ed0c0b2'

  url "https://dbeaver.com/files/#{version}/dbeaver-ee-#{version}-macos.dmg"
  appcast 'https://dbeaver.com/product/version.xml'
  name 'DBeaver Enterprise Edition'
  homepage 'https://dbeaver.com/'

  app 'DBeaverEE.app'

  caveats do
    depends_on_java '8+'
  end
end
