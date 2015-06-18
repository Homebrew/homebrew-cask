cask :v1 => 'mailplane' do
  version :latest
  sha256 :no_check

  url 'http://update.mailplaneapp.com/mailplane_3.php'
  name 'Mailplane'
  appcast 'http://update.mailplaneapp.com/appcast.php?appName=Mailplane',
          :sha256 => 'adae9ab9b89b12ce661a2475ff8a9d7b8220bb228e01dc38727ff28e2cd855e9'
  homepage 'http://mailplaneapp.com'
  license :commercial

  app 'Mailplane 3.app'

  postflight do
    suppress_move_to_applications
  end

  zap :delete => '~/Library/Preferences/com.mailplaneapp.Mailplane.plist'
end
