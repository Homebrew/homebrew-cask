cask :v1 => 'dealalert' do
  version :latest
  sha256 :no_check

  url 'http://littlefin.com/downloads/dealalert.zip'
  appcast 'http://www.littlefin.com/downloads/dealalert.xml'
  homepage 'http://dealalertapp.com/'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'DealAlert.app'
end
