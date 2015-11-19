cask :v1 => 'ibettercharge' do
  version '1.0.10-1443542332'
  sha256 'd4c3b410b77836ecc97bf6133e7109934c2d0a6b64349083d2c03b0280e21985'

  # dl.devmate.com is the official download host per the appcast feed
  url "http://dl.devmate.com/com.softorino.iBetterCharge/#{version.sub(%r{-.*$},'')}/#{version.sub(%r{^.*?-},'')}/iBetterCharge-#{version.sub(%r{-.*$},'')}.zip"
  appcast 'http://hook.softorino.com/ibc/appcast.xml'
  name 'iBetterCharge'
  homepage 'http://softorino.com/ibettercharge/'
  license :gratis

  app 'iBetterCharge.app'
end
