cask :v1 => 'notifyr' do
  version :latest
  sha256 :no_check

  url 'http://getnotifyr.com/app/Notifyr.zip'
  homepage 'http://getnotifyr.com'
  license :unknown    # todo: improve this machine-generated value

  prefpane 'Notifyr.prefPane'
end
