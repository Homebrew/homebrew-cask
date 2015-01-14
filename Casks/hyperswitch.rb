cask :v1 => 'hyperswitch' do
  version :latest
  sha256 :no_check

  url 'https://bahoom.com/hyperswitch/download'
  appcast 'http://hyperswitch.bahoom.com/appcast.xml'
  homepage 'http://bahoom.com/hyperswitch'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'HyperSwitch.app'
end
