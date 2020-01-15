cask 'hotswitch' do
  version '1.20'
  sha256 '55696b292a79f603a4b14c8272232ea30d13b78b4974fd135b9d0a0dd6331be6'

  url 'https://oniatsu.github.io/HotSwitch/release/zip/HotSwitch.zip'
  appcast 'https://github.com/oniatsu/HotSwitch/releases.atom'
  name 'HotSwitch'
  homepage 'https://oniatsu.github.io/HotSwitch/'

  app 'HotSwitch.app'
end
