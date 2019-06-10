cask 'dbeaver-enterprise' do
  version '6.1.0'
  sha256 '175e4a9a16d5c7ccd17b604c8dc10a1047be0965b47fc03d73b0b1249509448b'

  url "https://dbeaver.com/files/#{version}/dbeaver-ee-#{version}-macos.dmg"
  appcast 'https://dbeaver.com/product/version.xml'
  name 'DBeaver Enterprise Edition'
  homepage 'https://dbeaver.com/'

  app 'DBeaverEE.app'

  caveats do
    depends_on_java '8+'
  end
end
