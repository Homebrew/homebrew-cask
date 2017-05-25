cask 'kite' do
  version '0.20170524.1'
  sha256 '1a4159df5f31106e0accde132bddb9ec05c6312137b765313700f388b1fd5bb2'

  # s3-us-west-1.amazonaws.com/kite-downloads was verified as official when first introduced to the cask
  url "https://s3-us-west-1.amazonaws.com/kite-downloads/Kite-#{version}.dmg"
  appcast 'https://release.kite.com/appcast.xml',
          checkpoint: '537a25a1e6854b347154555befc7eb3a06982f15bd7e0a8895fef1a4a79f2167'
  name 'Kite'
  homepage 'https://kite.com/'

  auto_updates true

  app 'Kite.app'
end
