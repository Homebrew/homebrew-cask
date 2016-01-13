cask 'magicprefs' do
  version :latest
  sha256 :no_check

  url 'http://magicprefs.com/MagicPrefs.app.zip'
  appcast 'http://magicprefs.com/appcast.xml',
          :checkpoint => '515d0495170164ccda0bee47cd69646298fe0ac0943c95defee79fc4f01cb207'
  name 'MagicPrefs'
  homepage 'http://magicprefs.com/'
  license :gratis

  app 'MagicPrefs.app'

  zap :delete => [
                   '~/Library/Preferences/com.vladalexa.MagicPrefs.MagicPrefsPlugins.plist',
                   '~/Library/Preferences/com.vladalexa.MagicPrefs.plist',
                 ]
end
