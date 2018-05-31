cask 'litecoin' do
  version '0.16.0'
  sha256 '93b451d180b2c60495595df00c303de6b8e135187d0d77bd542b9df917f50286'

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
