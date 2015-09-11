cask :v1 => 'litecoin' do
  version '0.8.7.5'
  sha256 'b1067004335b9ab1495137cdd31e4051ca496b09f52412051c0ced586b9875e3'

  url "https://download.litecoin.org/litecoin-#{version}/osx/Litecoin-Qt-#{version}.dmg"
  gpg "#{url}.asc",
      :key_id => 'dc380da43082f16378c97414c37e4723969276f5'
  name 'Litecoin'
  homepage 'https://litecoin.org/'
  license :x11

  app 'Litecoin-Qt.app'
end
