cask :v1 => 'oolite' do
  version '1.80'
  sha256 'da6dc76f526dccf29c7c2180353f88979778dd26630cb8c032eaa437c6d197f2'

  # github.com is the official download host per the vendor homepage
  url "https://github.com/OoliteProject/oolite/releases/download/#{version}b/Oolite-#{version}.zip"
  name 'oolite'
  appcast 'http://www.oolite.org/updates/oolite-mac-appcast.xml',
          :sha256 => '04af78784ecdf907b4bdd0c89d12c72eebfa1feed0b61a55451a9052585beb5d'
  homepage 'http://www.oolite.org/'
  license :gpl

  app "Oolite #{version}/Oolite.app"
end
