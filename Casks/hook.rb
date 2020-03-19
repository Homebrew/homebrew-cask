cask 'hook' do
  version '1.4'
  sha256 '60b25c4c5c160ce1360c55700d5aaf6357fc76a931aeae86a8e2e2c0cfdd9564'

  # appcenter-filemanagement-distrib5ede6f06e.azureedge.net was verified as official when first introduced to the cask
  url 'https://appcenter-filemanagement-distrib5ede6f06e.azureedge.net/9833b7ef-39a1-42cc-ab0e-6def214e04ad/Hook_productivity_app_1.4.dmg?sv=2018-03-28&sr=c&sig=k%2F17I2dBuZJZNFT7FTQHKGodiQ%2Fz2nBJade6WaoGook%3D&se=2020-03-14T10%3A39%3A59Z&sp=r'
  appcast 'https://api.appcenter.ms/v0.1/public/sparkle/apps/a77a1a87-7d69-435d-90ea-7365b2f7bddb'
  name 'Hook'
  homepage 'https://hookproductivity.com/'

  auto_updates true
  depends_on macos: '>= :sierra'

  app 'Hook.app'

  uninstall launchctl: 'com.cogsciapps.hookautolaunchhelper',
            quit:      'com.cogsciapps.hook'

  zap trash:
             [
               '~/Library/Caches/com.cogsciapps.hook',
               '~/Library/Logs/com.cogsciapps.hook',
               '~/Library/Preferences/com.cogsciapps.hook.plist',
             ]
end
