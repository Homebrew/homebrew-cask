cask 'dbeaver-enterprise' do
  version '5.3.3'
  sha256 'a6ecf03697aa605fd787f86d450531054654c1ae5b3347eadf8c3de82c42392c'

  url "https://dbeaver.com/files/#{version}/dbeaver-ee-#{version}-macos.dmg"
  appcast 'https://dbeaver.com/product/version.xml'
  name 'DBeaver Enterprise Edition'
  homepage 'https://dbeaver.com/'

  app 'DBeaverEE.app'

  caveats do
    depends_on_java '8+'
  end
end
