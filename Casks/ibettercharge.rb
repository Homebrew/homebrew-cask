cask 'ibettercharge' do
  version '1.0.10,1443542332'
  sha256 'd4c3b410b77836ecc97bf6133e7109934c2d0a6b64349083d2c03b0280e21985'

  # devmate.com/com.softorino.iBetterCharge was verified as official when first introduced to the cask
  url "https://dl.devmate.com/com.softorino.iBetterCharge/#{version.before_comma}/#{version.after_comma}/iBetterCharge-#{version.before_comma}.zip"
  appcast 'http://hook.softorino.com/ibc/appcast.xml',
          checkpoint: '928b6c64636011e7c75492c6cd2adbaa7e15d38c7773d30bac6aca1745a72cb2'
  name 'iBetterCharge'
  homepage 'https://softorino.com/ibettercharge/'

  app 'iBetterCharge.app'
end
