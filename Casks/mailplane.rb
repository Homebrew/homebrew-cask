cask :v1 => 'mailplane' do
  version :latest
  sha256 :no_check

  url 'http://update.mailplaneapp.com/mailplane_3.php'
  name 'Mailplane'
  appcast 'http://update.mailplaneapp.com/appcast.php?appName=Mailplane',
          :sha256 => 'bb0d94c7ae6fe94b2a1273cac330bcf446d97e2cf4e3539a6f62097ec93569c5'
  homepage 'http://mailplaneapp.com'
  license :commercial

  app 'Mailplane 3.app'

  postflight do
    suppress_move_to_applications
  end

  zap :delete => '~/Library/Preferences/com.mailplaneapp.Mailplane.plist'
end
