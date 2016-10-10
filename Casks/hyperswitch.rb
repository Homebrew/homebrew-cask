cask 'hyperswitch' do
  version '0.2.565-dev'
  sha256 '8b44564d2cf52fac6bf4582517574c1c93f418ff03ef303fb9479a2f70340e77'

  url "https://bahoom.com/hyperswitch/#{version}/HyperSwitch.zip"
  appcast 'https://bahoom.com/hyperswitch/appcast.xml',
          checkpoint: '74569bb37bae6d0a7ecfed2e63bc4acea2253e8611705ae8d24e1025b015cc16'
  name 'HyperSwitch'
  homepage 'https://bahoom.com/hyperswitch/'

  app 'HyperSwitch.app'
end
