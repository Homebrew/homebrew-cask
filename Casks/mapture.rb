cask :v1 => 'mapture' do
  version '0.0.16'
  sha256 '54301ca09e3f781dd979fc41978ee2dc547c56bc5776d4b25876bad1ab37b85d'

  url "http://anatoo.jp/mapture/Mapture-#{version}.app.zip"
  homepage 'http://anatoo.jp/mapture/'
  license :unknown    # todo: improve this machine-generated value

  app "Mapture-#{version}.app"
end
