cask 'mailplane' do
  version :latest
  sha256 :no_check

  url 'http://update.mailplaneapp.com/mailplane_3.php'
  name 'Mailplane'
  homepage 'https://mailplaneapp.com/'

  app 'Mailplane 3.app'

  zap trash: '~/Library/Preferences/com.mailplaneapp.Mailplane.plist'
end
