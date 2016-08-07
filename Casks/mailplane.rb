cask 'mailplane' do
  version :latest
  sha256 :no_check

  url 'http://update.mailplaneapp.com/mailplane_3.php'
  name 'Mailplane'
  homepage 'http://mailplaneapp.com'
  license :commercial

  app 'Mailplane 3.app'

  postflight do
    suppress_move_to_applications
  end

  zap delete: '~/Library/Preferences/com.mailplaneapp.Mailplane.plist'
end
