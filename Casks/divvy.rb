class Divvy < Cask
  version :latest
  sha256 :no_check

  url 'https://mizage.com/downloads/Divvy.zip'
  appcast 'http://mizage.com/updates/profiles/divvy.php'
  homepage 'http://mizage.com/divvy/'

  app 'Divvy.app'
  zap :files => [
                 '~/Library/Preferences/com.mizage.direct.Divvy.plist',
                 '~/Library/Preferences/com.mizage.Divvy.plist',
                ]
end
