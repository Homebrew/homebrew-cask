cask 'commandq' do
  version '1.0.4'
  sha256 '1183a2baf3775bd47851c94636ebe41356e4b53fce1dd35b4b70b9298294a107'

  url "http://dl.clickontyler.com/commandq/commandq_#{version}.zip"
  appcast 'https://shine.clickontyler.com/appcast.php?id=16',
          :checkpoint => '24ce88adf2a698a843836c2c7686c838cb2b6d46a5220d0a6153556868f795ed'
  name 'CommandQ'
  homepage 'https://clickontyler.com/commandq/'
  license :commercial

  app 'CommandQ.app'
end
