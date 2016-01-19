cask 'finderminder' do
  version '1.2'
  sha256 '9123db1552c5b8f1a65fde3a0bcee8007bc7f6d04364f586a53fc4f1ad27797e'

  url "https://www.irradiatedsoftware.com/downloads/FinderMinder_#{version}.zip"
  appcast 'https://www.irradiatedsoftware.com/updates/profiles/finderminder.php',
          checkpoint: '7871062270c4d96fb0878619d71edbdee1da5f4a51818401d5fd864450826853'
  name 'FinderMinder'
  homepage 'http://irradiatedsoftware.com/labs'
  license :gratis

  accessibility_access true

  app 'FinderMinder.app'

  zap delete: '~/Library/Preferences/com.irradiatedsoftware.FinderMinder.plist'
end
