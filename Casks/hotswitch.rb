cask :v1 => 'hotswitch' do
  version :latest
  sha256 :no_check

  url 'http://oniatsu.github.io/HotSwitch/release/zip/HotSwitch.zip'
  name 'HotSwitch'
  homepage 'http://oniatsu.github.io/HotSwitch/'
  license :mit

  app 'HotSwitch.app'
end
