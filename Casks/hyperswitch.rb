cask 'hyperswitch' do
  version '0.2.563-dev'
  sha256 '4e13fe57253e93b1fca7d3d088f4cc70c013ea1b3149ce24c92652687a47659b'

  url "https://bahoom.com/hyperswitch/#{version}/HyperSwitch.zip"
  appcast 'https://bahoom.com/hyperswitch/appcast.xml',
          checkpoint: '9c4c83505f3e4a056f0784ae11883f99efc75f750aa525d0191a75f2c04a91c6'
  name 'HyperSwitch'
  homepage 'https://bahoom.com/hyperswitch/'
  license :gratis

  app 'HyperSwitch.app'
end
