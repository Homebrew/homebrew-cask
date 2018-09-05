cask 'litecoin' do
  version '0.16.0'
  sha256 'e33fab8afa3c03eabcd958f4f7c2a4fdfdaf1f65eff7a861135e19fbc68423ad'

  url "https://download.litecoin.org/litecoin-#{version}/osx/litecoin-#{version}-osx.dmg"
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
