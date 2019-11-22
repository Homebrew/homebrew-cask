cask 'hotswitch' do
  version '1.19'
  sha256 '4e341d025a1951270fcd0ee363f821c5a026b9eb5a1d592e25a955afe497b256'

  url 'https://oniatsu.github.io/HotSwitch/release/zip/HotSwitch.zip'
  appcast 'https://github.com/oniatsu/HotSwitch/releases.atom'
  name 'HotSwitch'
  homepage 'https://oniatsu.github.io/HotSwitch/'

  app 'HotSwitch.app'
end
