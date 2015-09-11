cask :v1 => 'contexts' do
  version '1.9.1'
  sha256 'ea276539cb4c4dd92bbfca3279143f0d48940323ad910dd38e91a4424d5bab0a'

  url "https://contexts.co/releases/Contexts-#{version}.zip"
  appcast 'https://contexts.co/appcasts/stable.xml'
  name 'Contexts'
  homepage 'https://contexts.co'
  license :commercial

  app 'Contexts.app'

  uninstall :quit => 'com.contextsformac.Contexts'

  zap :delete => [
                  '~/Library/Application Support/.com.contextsformac.Contexts.plist',
                  '~/Library/Caches/com.contextsformac.Contexts',
                  '~/Library/Preferences/com.contextsformac.Contexts.plist'
                 ]
end
