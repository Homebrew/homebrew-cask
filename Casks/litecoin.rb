cask :v1 => 'litecoin' do
  version '0.8.7.4'
  sha256 'ab69c7b668cae4cff2025e3ea6845751277851e880a7f030e12ec525d088eeb9'

  url "https://download.litecoin.org/litecoin-#{version}/macosx/Litecoin-Qt-#{version}.dmg"
  gpg "#{url}.asc",
      :key_id => 'c37e4723969276f5'
  homepage 'https://litecoin.org/'
  license :x11

  app 'Litecoin-Qt.app'
end
