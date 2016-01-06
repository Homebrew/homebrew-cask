cask 'schnapps' do
  version :latest
  sha256 :no_check

  url 'https://d15xn61otjv90c.cloudfront.net/download/Schnapps_latest.zip'
  appcast 'http://schnappsformac.com/download/appcast.xml',
          :sha256 => '1fa261b1b268b99f43353523c760d602ae10e41ae1a7daeadeb98e9d9fae4f4b'
  name 'Schnapps'
  homepage 'http://schnappsformac.com/'
  license :commercial

  app 'Schnapps.app'

  postflight do
    suppress_move_to_applications
  end
end
