cask 'dbeaver-enterprise' do
  version '6.1.0'
  sha256 '548a91943e4d0df9b7d1e9fcbefeab6b383812a4530e24601bd930bd514cc6fa'

  url "https://dbeaver.com/files/#{version}/dbeaver-ee-#{version}-macos.dmg"
  appcast 'https://dbeaver.com/product/version.xml'
  name 'DBeaver Enterprise Edition'
  homepage 'https://dbeaver.com/'

  app 'DBeaverEE.app'

  caveats do
    depends_on_java '8+'
  end
end
