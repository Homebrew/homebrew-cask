cask 'notifyr' do
  version :latest
  sha256 :no_check

  url 'http://getnotifyr.com/app/Notifyr.zip'
  appcast 'http://getnotifyr.com/app/appcast.xml',
          :checkpoint => 'de1016b8d5d38d7cef29825dd0c1615763c8f44b5fb1ae7744081c1b33392a9d'
  name 'Notifyr'
  homepage 'http://getnotifyr.com'
  license :gratis

  prefpane 'Notifyr.prefPane'
end
