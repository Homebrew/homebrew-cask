cask 'litecoin' do
  version '0.14.2'
  sha256 'd99443785f3e5f7a8648ed17644869954f7e169ee0c2f0314b55fefbcbaa3a0d'

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

  uninstall_preflight do
    set_permissions "#{appdir}/Litecoin-Qt.app", '0755'
  end
end
