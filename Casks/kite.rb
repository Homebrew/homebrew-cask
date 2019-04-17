cask 'kite' do
  version '0.20190416.0'
  sha256 '4ccdb1c1942ac31418c95c33682c0519152a3eb0f7d49dd2539fbd565c7b5664'

  # s3-us-west-1.amazonaws.com/kite-downloads was verified as official when first introduced to the cask
  url "https://s3-us-west-1.amazonaws.com/kite-downloads/Kite-#{version}.dmg"
  appcast 'https://release.kite.com/appcast.xml'
  name 'Kite'
  homepage 'https://kite.com/'

  auto_updates true

  app 'Kite.app'
end
