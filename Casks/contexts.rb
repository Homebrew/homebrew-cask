cask 'contexts' do
  version '2.0.3'
  sha256 '3cadaf3f5c77a62f1181282bffd37ea8eaf60501b8ece5fce45ca6af1b65dd62'

  url "https://contexts.co/releases/Contexts-#{version}.zip"
  appcast 'https://contexts.co/appcasts/stable.xml',
          checkpoint: 'be92aad194057e5602d48ebaf62647980c07afd21f79cd1d95b982c0c0985c62'
  name 'Contexts'
  homepage 'https://contexts.co'
  license :commercial

  app 'Contexts.app'

  uninstall quit: 'com.contextsformac.Contexts'

  zap delete: [
                '~/Library/Application Support/.com.contextsformac.Contexts.plist',
                '~/Library/Caches/com.contextsformac.Contexts',
                '~/Library/Preferences/com.contextsformac.Contexts.plist',
              ]
end
