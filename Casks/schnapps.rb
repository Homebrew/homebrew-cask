cask 'schnapps' do
  version :latest
  sha256 :no_check

  url 'https://d15xn61otjv90c.cloudfront.net/download/Schnapps_latest.zip'
  appcast 'http://schnappsformac.com/download/appcast.xml',
          :checkpoint => '9d8006fdd5db72e9f79ee2814bb794c4aa775710243bf5f96655bfad562664f0'
  name 'Schnapps'
  homepage 'http://schnappsformac.com/'
  license :commercial

  app 'Schnapps.app'

  postflight do
    suppress_move_to_applications
  end
end
