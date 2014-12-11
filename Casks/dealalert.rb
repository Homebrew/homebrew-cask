cask :v1 => 'dealalert' do
  version :latest
  sha256 :no_check

  url 'http://littlefin.com/downloads/dealalert.zip'
  appcast 'http://www.littlefin.com/downloads/dealalert.xml'
  homepage 'http://dealalertapp.com/'
  license :unknown    # todo: improve this machine-generated value

  app 'DealAlert.app'
end
