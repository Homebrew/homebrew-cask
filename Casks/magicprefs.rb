cask 'magicprefs' do
  version :latest
  sha256 :no_check

  url 'http://magicprefs.com/MagicPrefs.app.zip'
  appcast 'http://magicprefs.com/appcast.xml',
          :checkpoint => '7f1e799294ffa9601c7e96765987647129f76b3880d2d350e25be124de5ea7db'
  name 'MagicPrefs'
  homepage 'http://magicprefs.com/'
  license :gratis

  app 'MagicPrefs.app'

  zap :delete => [
                   '~/Library/Preferences/com.vladalexa.MagicPrefs.MagicPrefsPlugins.plist',
                   '~/Library/Preferences/com.vladalexa.MagicPrefs.plist',
                 ]
end
