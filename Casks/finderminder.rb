cask :v1 => 'finderminder' do
  version :latest
  sha256 :no_check

  url 'https://www.irradiatedsoftware.com/download/FinderMinder.zip'
  appcast 'https://www.irradiatedsoftware.com/updates/profiles/finderminder.php',
          :sha256 => 'f546195134c20f6b04600b97c089467afeb02c7c3c86e683ca9545fbe8d49770'
  name 'FinderMinder'
  homepage 'http://irradiatedsoftware.com/labs'
  license :gratis

  app 'FinderMinder.app'

  accessibility_access true

  zap :delete => '~/Library/Preferences/com.irradiatedsoftware.FinderMinder.plist'
end
