cask 'litecoin' do
  version '0.10.2.2'
  sha256 'f37c813319504dcb50883eaf9c77795df1be1fe748b5e452ca19c89c2b7543da'

  url "https://download.litecoin.org/litecoin-#{version}/osx/litecoin-#{version}-osx.dmg"
  name 'Litecoin'
  homepage 'https://litecoin.org/'
  license :x11
  gpg "#{url}.asc",
      key_id: 'dc380da43082f16378c97414c37e4723969276f5'

  app 'Litecoin-Qt.app'
end
