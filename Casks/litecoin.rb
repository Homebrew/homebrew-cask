cask 'litecoin' do
  version '0.15.1'
  sha256 'e33039232541c190a1529323b6d872d986f8b14bc2fcb8763721de52ed9f9096'

  url "https://download.litecoin.org/litecoin-#{version}/osx/litecoin-#{version}-osx.dmg"
  name 'Litecoin'
  homepage 'https://litecoin.org/'
  gpg "#{url}.asc", key_id: 'fe3348877809386c'

  app 'Litecoin-Qt.app'

  preflight do
    set_permissions "#{staged_path}/Litecoin-Qt.app", '0755'
  end

  postflight do
    set_permissions "#{appdir}/Litecoin-Qt.app", '0555'
  end

  uninstall_preflight do
    set_permissions "#{appdir}/Litecoin-Qt.app", '0755'
  end
end
