cask :v1 => 'magicprefs' do
  version :latest
  sha256 :no_check

  url 'http://magicprefs.com/MagicPrefs.app.zip'
  homepage 'http://magicprefs.com/'
  license :gratis

  app 'MagicPrefs.app'

  zap :delete => [
                  '~/Library/Preferences/com.vladalexa.MagicPrefs.MagicPrefsPlugins.plist',
                  '~/Library/Preferences/com.vladalexa.MagicPrefs.plist',
                 ]
end
