cask :v1 => 'magicprefs' do
  version :latest
  sha256 :no_check

  url 'http://magicprefs.com/MagicPrefs.app.zip'
  name 'MagicPrefs'
  appcast 'http://magicprefs.com/appcast.xml',
          :sha256 => '907873f5493a31dc57884c1b34cdc36ef53eccda2a857593285e26e2016fd348'
  homepage 'http://magicprefs.com/'
  license :gratis

  app 'MagicPrefs.app'

  zap :delete => [
                  '~/Library/Preferences/com.vladalexa.MagicPrefs.MagicPrefsPlugins.plist',
                  '~/Library/Preferences/com.vladalexa.MagicPrefs.plist',
                 ]
end
