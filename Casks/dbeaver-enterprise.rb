cask 'dbeaver-enterprise' do
  version '7.1.0'
  sha256 '020bb975764e7b62e1d4fbe9f2dcf3e9e4250d635cd84759832f48521e43864e'

  url "https://dbeaver.com/files/#{version}/dbeaver-ee-#{version}-macos.dmg"
  appcast 'https://dbeaver.com/product/version.xml'
  name 'DBeaver Enterprise Edition'
  homepage 'https://dbeaver.com/'

  app 'DBeaverEE.app'

  caveats do
    depends_on_java '8+'
  end
end
