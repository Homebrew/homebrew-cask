cask 'hotswitch' do
  version '1.18'
  sha256 'ebaf2b6e73446a4a70077a451d7ed0a9f14bf8aa75b9f67f74347a65d31e6db0'

  url 'https://oniatsu.github.io/HotSwitch/release/zip/HotSwitch.zip'
  appcast 'https://github.com/oniatsu/HotSwitch/releases.atom'
  name 'HotSwitch'
  homepage 'https://oniatsu.github.io/HotSwitch/'

  app 'HotSwitch.app'
end
