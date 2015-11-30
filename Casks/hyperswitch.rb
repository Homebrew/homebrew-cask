cask :v1 => 'hyperswitch' do
  version '0.2.481-dev'
  sha256 '98b0b6bea2e786e0acc859e69cd89921f4f74bd80a65002950a0a4809017c9cb'

  url "https://bahoom.com/hyperswitch/#{version}/HyperSwitch.zip"
  appcast 'https://bahoom.com/hyperswitch/appcast.xml'
  name 'HyperSwitch'
  homepage 'https://bahoom.com/hyperswitch/'
  license :gratis

  app 'HyperSwitch.app'
end
