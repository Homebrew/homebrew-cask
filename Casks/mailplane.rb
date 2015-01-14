cask :v1 => 'mailplane' do
  version :latest
  sha256 :no_check

  url 'http://update.mailplaneapp.com/mailplane_3.php'
  homepage 'http://mailplaneapp.com'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'Mailplane 3.app'

  zap :delete => '~/Library/Preferences/com.mailplaneapp.Mailplane.plist'
end
