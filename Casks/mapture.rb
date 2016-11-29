cask 'mapture' do
  version '0.0.16'
  sha256 '54301ca09e3f781dd979fc41978ee2dc547c56bc5776d4b25876bad1ab37b85d'

  url "http://anatoo.jp/mapture/Mapture-#{version}.app.zip"
  name 'Mapture'
  homepage 'http://anatoo.jp/mapture/'

  app "Mapture-#{version}.app"
end
