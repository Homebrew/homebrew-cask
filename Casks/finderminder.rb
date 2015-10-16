cask :v1 => 'finderminder' do
  version '1.2'
  sha256 '9123db1552c5b8f1a65fde3a0bcee8007bc7f6d04364f586a53fc4f1ad27797e'

  url "https://www.irradiatedsoftware.com/downloads/FinderMinder_#{version}.zip"
  appcast 'https://www.irradiatedsoftware.com/updates/profiles/finderminder.php',
          :sha256 => 'f546195134c20f6b04600b97c089467afeb02c7c3c86e683ca9545fbe8d49770'
  name 'FinderMinder'
  homepage 'http://irradiatedsoftware.com/labs'
  license :gratis

  app 'FinderMinder.app'

  accessibility_access true

  zap :delete => '~/Library/Preferences/com.irradiatedsoftware.FinderMinder.plist'
end
