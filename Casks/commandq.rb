cask 'commandq' do
  version '1.0.4'
  sha256 '1183a2baf3775bd47851c94636ebe41356e4b53fce1dd35b4b70b9298294a107'

  url "http://dl.clickontyler.com/commandq/commandq_#{version}.zip"
  appcast 'https://shine.clickontyler.com/appcast.php?id=16',
          checkpoint: '5e0f2d62c65b64c0fffa677040a4bd02213ed65c7f37908d055b900a4d40e646'
  name 'CommandQ'
  homepage 'https://clickontyler.com/commandq/'

  app 'CommandQ.app'
end
