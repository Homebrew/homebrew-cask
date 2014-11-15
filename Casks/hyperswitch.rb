cask :v1 => 'hyperswitch' do
  version :latest
  sha256 :no_check

  url 'https://bahoom.com/hyperswitch/download'
  appcast 'http://hyperswitch.bahoom.com/appcast.xml'
  homepage 'http://bahoom.com/hyperswitch'
  license :unknown

  app 'HyperSwitch.app'
end
