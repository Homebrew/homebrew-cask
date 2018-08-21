cask 'mailplane' do
  version :latest
  sha256 :no_check

  url 'https://update.mailplaneapp.com/mailplane_4.php'
  name 'Mailplane'
  homepage 'https://mailplaneapp.com/'

  app 'Mailplane.app'

  zap trash: '~/Library/Preferences/com.mailplaneapp.Mailplane.plist'
end
