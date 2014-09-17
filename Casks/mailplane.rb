class Mailplane < Cask
  version :latest
  sha256 :no_check

  url 'http://update.mailplaneapp.com/mailplane_3.php'
  homepage 'http://mailplaneapp.com'

  app 'Mailplane 3.app'
  zap :files => '~/Library/Preferences/com.mailplaneapp.Mailplane.plist'
end
