cask 'litecoin' do
  version '0.10.4.0'
  sha256 '165452e7eefb36771002fdfc8e35b436f4af5280683c33ee6919282be5078f01'

  url "https://download.litecoin.org/litecoin-#{version}/osx/litecoin-#{version}-osx.dmg"
  name 'Litecoin'
  homepage 'https://litecoin.org/'
  license :x11
  gpg "#{url}.asc",
      key_id: 'dc380da43082f16378c97414c37e4723969276f5'

  app 'Litecoin-Qt.app'
end
