cask :v1 => 'notifyr' do
  version :latest
  sha256 :no_check

  url 'http://getnotifyr.com/app/Notifyr.zip'
  name 'Notifyr'
  appcast 'http://getnotifyr.com/app/appcast.xml',
          :sha256 => 'ed45021ad3a68300749e070acdd41a52506ca14f9743d438058463c1c9c9e803'
  homepage 'http://getnotifyr.com'
  license :gratis

  prefpane 'Notifyr.prefPane'
end
