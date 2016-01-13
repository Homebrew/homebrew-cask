cask 'schnapps' do
  version :latest
  sha256 :no_check

  url 'https://d15xn61otjv90c.cloudfront.net/download/Schnapps_latest.zip'
  appcast 'http://schnappsformac.com/download/appcast.xml',
          :checkpoint => '9ff50a436391d07e60fc13fb5ac7ff559213280151f716b358780ffa72a945ea'
  name 'Schnapps'
  homepage 'http://schnappsformac.com/'
  license :commercial

  app 'Schnapps.app'

  postflight do
    suppress_move_to_applications
  end
end
