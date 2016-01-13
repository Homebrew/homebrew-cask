cask 'hyperswitch' do
  version '0.2.481-dev'
  sha256 '98b0b6bea2e786e0acc859e69cd89921f4f74bd80a65002950a0a4809017c9cb'

  url "https://bahoom.com/hyperswitch/#{version}/HyperSwitch.zip"
  appcast 'https://bahoom.com/hyperswitch/appcast.xml',
          :checkpoint => '6327ff198c92f62a862e206fd61644c440c34ae811c4a77949cc33ed4a360984'
  name 'HyperSwitch'
  homepage 'https://bahoom.com/hyperswitch/'
  license :gratis

  app 'HyperSwitch.app'
end
