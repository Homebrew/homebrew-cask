cask 'litecoin' do
  version '0.13.2'
  sha256 '5a86edc58c9bbc0ee059e933e5b94470f168caa76557bc8f255b35d3c8530954'

  url "https://download.litecoin.org/litecoin-#{version}/osx/litecoin-#{version}-osx.dmg"
  name 'Litecoin'
  homepage 'https://litecoin.org/'
  gpg "#{url}.asc", key_id: 'dc380da43082f16378c97414c37e4723969276f5'

  app 'Litecoin-Qt.app'

  preflight do
    set_permissions "#{staged_path}/Litecoin-Qt.app", '0755'
  end

  postflight do
    set_permissions "#{appdir}/Litecoin-Qt.app", '0555'
  end
end
