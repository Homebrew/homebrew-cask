cask 'kite-copilot' do
  version '0.20170330.0'
  sha256 'ffeef839d7bdf591134ec56f060e0305a4a6e1fc8f1c0cd1714c787eb57ab0db'

  # s3-us-west-1.amazonaws.com/kite-downloads was verified as official when first introduced to the cask
  url "https://s3-us-west-1.amazonaws.com/kite-downloads/Kite-#{version}.dmg"
  appcast 'https://release.kite.com/appcast.xml',
          checkpoint: '56e444ad815da78da235b3b3d289a190c84295bfb136ce4e226d1dde04372907'
  name 'Kite'
  homepage 'https://kite.com/'

  auto_updates true

  app 'Kite.app'
end
