cask 'icamsource' do
  if MacOS.version <= :mountain_lion
    version '2.7.2'
    sha256 '21ab85b8914d2da18f38675b44635573e9693f442d9810ce93df012e9cba43bb'
  else
    version '2.8.5'
    sha256 'ff27ea1747f6ea555b4f98e01a2a57c6a2c939bd06cdf28211b423e6c4af2704'
  end
  url "http://skjm.com/icam/iCamSource#{version}.dmg"
  appcast 'http://skjm.com/sparkle/iCamSource.xml',
          checkpoint: '67a506f70a3a997b2d77198ca8902b5fdf7bdfd7a28c269ffebcc8528bb58650'
  name 'iCamSource'
  homepage 'http://skjm.com/icam/support.php'

  app 'iCamSource.app'
end
