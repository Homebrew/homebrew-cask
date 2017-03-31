cask 'kite-copilot' do
  version '0.20170330.0'
  sha256 'ffeef839d7bdf591134ec56f060e0305a4a6e1fc8f1c0cd1714c787eb57ab0db'

  # s3-us-west-1.amazonaws.com/kite-downloads was verified as official when first introduced to the cask
  url 'https://s3-us-west-1.amazonaws.com/kite-downloads/Kite-0.20170330.0.dmg'
  name 'Kite'
  homepage 'https://kite.com/'

  app 'Kite.app'
end
