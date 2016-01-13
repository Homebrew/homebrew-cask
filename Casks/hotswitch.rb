cask 'hotswitch' do
  version :latest
  sha256 :no_check

  url 'https://oniatsu.github.io/HotSwitch/release/zip/HotSwitch.zip'
  appcast 'https://oniatsu.github.io/HotSwitch/release/appcast.xml',
          :sha256 => '7be543bb5d7da557abb9b78ce9c455db71de9625bfac0f63e4c89ae030b8cefc'
  name 'HotSwitch'
  homepage 'https://oniatsu.github.io/HotSwitch/'
  license :mit

  app 'HotSwitch.app'
end
