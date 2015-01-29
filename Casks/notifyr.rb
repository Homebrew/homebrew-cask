cask :v1 => 'notifyr' do
  version :latest
  sha256 :no_check

  url 'http://getnotifyr.com/app/Notifyr.zip'
  name 'Notifyr'
  homepage 'http://getnotifyr.com'
  license :gratis

  prefpane 'Notifyr.prefPane'
end
