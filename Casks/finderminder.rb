cask 'finderminder' do
  version '1.2'
  sha256 '9123db1552c5b8f1a65fde3a0bcee8007bc7f6d04364f586a53fc4f1ad27797e'

  url "https://www.irradiatedsoftware.com/downloads/FinderMinder_#{version}.zip"
  appcast 'https://www.irradiatedsoftware.com/updates/profiles/finderminder.php',
          :sha256 => 'bb1dab8155aac83f1d96e6b6ed7b09b278dbdcb4e45045bbb8f008662e660a87'
  name 'FinderMinder'
  homepage 'http://irradiatedsoftware.com/labs'
  license :gratis

  accessibility_access true

  app 'FinderMinder.app'

  zap :delete => '~/Library/Preferences/com.irradiatedsoftware.FinderMinder.plist'
end
