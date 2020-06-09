cask 'dbeaver-enterprise' do
  version '7.1.0'
  sha256 '0d30566dbe11594f1cc0dfbaa5254c8fa7255552b576fc22a6806b4d6197f277'

  url "https://dbeaver.com/files/#{version}/dbeaver-ee-#{version}-macos.dmg"
  appcast 'https://dbeaver.com/product/version.xml'
  name 'DBeaver Enterprise Edition'
  homepage 'https://dbeaver.com/'

  app 'DBeaverEE.app'

  caveats do
    depends_on_java '8+'
  end
end
