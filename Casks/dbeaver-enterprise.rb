cask 'dbeaver-enterprise' do
  version '5.2.0'
  sha256 'e93e137a83f48a5d8abcff8d1de1b115ff5eb6f27a77620d7b47309487ebdb82'

  url "https://dbeaver.com/files/#{version}/dbeaver-ee-#{version}-macos.dmg"
  appcast 'https://dbeaver.com/product/version.xml'
  name 'DBeaver Enterprise Edition'
  homepage 'https://dbeaver.com/'

  app 'DBeaverEE.app'

  caveats do
    depends_on_java '8+'
  end
end
