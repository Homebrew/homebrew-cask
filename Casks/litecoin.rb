cask 'litecoin' do
  version '0.17.1'
  sha256 '7f8ec34706701482970baae4d4bc0fdb19016a6ab5260f983bf478428f0da518'

  url "https://download.litecoin.org/litecoin-#{version}/osx/litecoin-#{version}-osx.dmg"
  appcast 'https://github.com/litecoin-project/litecoin/releases.atom'
  name 'Litecoin'
  homepage 'https://litecoin.org/'

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
