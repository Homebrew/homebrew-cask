cask :v1 => 'juicephone' do
  version :latest
  sha256 :no_check

  url 'http://download.addpod.com/juicephone'
  name 'JuicePhone'
  appcast 'http://update.addpod.com/juicephone.xml',
          :sha256 => '771453d462d524ff73c53318489aa7719ee63a2a84a41a4c049cc12bc195c1e7'
  homepage 'http://addpod.com/juicephone'
  license :gratis

  app 'JuicePhone.app'
end
