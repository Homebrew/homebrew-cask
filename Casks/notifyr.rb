cask 'notifyr' do
  version :latest
  sha256 :no_check

  url 'http://getnotifyr.com/app/Notifyr.zip'
  appcast 'http://getnotifyr.com/app/appcast.xml',
          :checkpoint => '4cbac0fcae6af8a1c00bbc8e5a8c499ab5e4cd18a5126d518205924705fb3ab4'
  name 'Notifyr'
  homepage 'http://getnotifyr.com'
  license :gratis

  prefpane 'Notifyr.prefPane'
end
