class Hyperswitch < Cask
  version :latest
  sha256 :no_check

  url 'https://bahoom.com/hyperswitch/download'
  appcast 'http://hyperswitch.bahoom.com/appcast.xml'
  homepage 'http://bahoom.com/hyperswitch'

  app 'HyperSwitch.app'
end
