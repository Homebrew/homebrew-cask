cask 'contexts' do
  version '2.6.1'
  sha256 'aa4051ec2a2e49e23c1dc621afb23938166063ccb230e4c24d996f53ecdc5f73'

  url "https://contexts.co/releases/Contexts-#{version}.zip"
  appcast 'https://contexts.co/appcasts/stable.xml',
          checkpoint: 'be56bd036b79f7d3b7d05685f151db835e51802547695bf78e639ed899f0ef89'
  name 'Contexts'
  homepage 'https://contexts.co'

  app 'Contexts.app'

  uninstall quit: 'com.contextsformac.Contexts'

  zap delete: [
                '~/Library/Application Support/.com.contextsformac.Contexts.plist',
                '~/Library/Caches/com.contextsformac.Contexts',
                '~/Library/Preferences/com.contextsformac.Contexts.plist',
              ]
end
