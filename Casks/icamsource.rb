cask 'icamsource' do
  if MacOS.version <= :mountain_lion
    version '2.7.2'
    if MacOS.version <= :leopard
      url "http://skjm.com/icam/iCamSource_Tiger_Leopard_#{version}.dmg"
      sha256 '21ab85b8914d2da18f38675b44635573e9693f442d9810ce93df012e9cba43bb'
    else
      url "http://skjm.com/icam/iCamSource#{version}.dmg"
      sha256 'c6a8c0dd335ff87e7cca7c82bf9989ac959be7c9d729b0c7fd560bb735a83a9c'
    end
  else
    version '2.8.5'
    url "http://skjm.com/icam/iCamSource#{version}.dmg"
    sha256 'ff27ea1747f6ea555b4f98e01a2a57c6a2c939bd06cdf28211b423e6c4af2704'
  end
  appcast 'http://skjm.com/sparkle/iCamSource.xml',
          checkpoint: '67a506f70a3a997b2d77198ca8902b5fdf7bdfd7a28c269ffebcc8528bb58650'
  name 'iCamSource'
  homepage 'http://skjm.com/icam/support.php'
  license :gratis

  depends_on macos: '>= :tiger'

  app 'iCamSource.app'
end
