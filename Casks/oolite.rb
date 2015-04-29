cask :v1 => 'oolite' do
  version '1.80'
  sha256 'da6dc76f526dccf29c7c2180353f88979778dd26630cb8c032eaa437c6d197f2'

  url 'https://github.com/OoliteProject/oolite/releases/download/1.80b/Oolite-1.80.zip'
  name 'oolite'
  homepage 'http://www.oolite.org/'
  license :gpl
  
  app "Oolite #{version}/Oolite.app"
end
