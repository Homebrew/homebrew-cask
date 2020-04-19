cask 'hook' do
  version '1.5.1'
  sha256 'fbfcf66c02b08c1234bb6cf443dc9d6aa93c232b0d9113c110bdd419ee6819e5'

  # appcenter-filemanagement-distrib2ede6f06e.azureedge.net was verified as official when first introduced to the cask
  url 'https://appcenter-filemanagement-distrib2ede6f06e.azureedge.net/0abd8c0f-8c31-48cc-8c4a-a82b81e91dc7/Hook%20productivity%20app%201.5.1.dmg?sv=2019-02-02&sr=c&sig=PRZAnwX5PKFED%2BnBKOSw0IURxiDEl%2BFC7SrdC9VejaQ%3D&se=2020-04-20T10%3A18%3A56Z&sp=r'
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
