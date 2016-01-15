cask 'hotswitch' do
  version :latest
  sha256 :no_check

  url 'https://oniatsu.github.io/HotSwitch/release/zip/HotSwitch.zip'
  appcast 'https://oniatsu.github.io/HotSwitch/release/appcast.xml',
          :checkpoint => 'ea46fbc74644b1bb6c0028028e365cade8cc3c2e7132d4d1b63f5ad6f4440985'
  name 'HotSwitch'
  homepage 'https://oniatsu.github.io/HotSwitch/'
  license :mit

  app 'HotSwitch.app'
end
