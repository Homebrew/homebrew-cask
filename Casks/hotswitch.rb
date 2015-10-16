cask :v1 => 'hotswitch' do
  version :latest
  sha256 :no_check

  url 'https://oniatsu.github.io/HotSwitch/release/zip/HotSwitch.zip'
  name 'HotSwitch'
  appcast 'https://oniatsu.github.io/HotSwitch/release/appcast.xml',
          :sha256 => 'c0a545a269cf17dcded22fe34da603cca9d793a8d5f8dbf60d4e760e2a6cb4cf'
  homepage 'https://oniatsu.github.io/HotSwitch/'
  license :mit

  app 'HotSwitch.app'
end
