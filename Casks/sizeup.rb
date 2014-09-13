class Sizeup < Cask
  version 'latest'
  sha256 :no_check

  url 'https://www.irradiatedsoftware.com/download/SizeUp.zip'
  appcast 'http://www.irradiatedsoftware.com/updates/profiles/sizeup.php'
  homepage 'http://www.irradiatedsoftware.com/sizeup/index.html'

  app 'SizeUp.app'
  zap :files => [
                 '~/Library/Preferences/com.irradiatedsoftware.SizeUp.plist',
                 '~/Library/Application Support/SizeUp',
                ]
end
