cask :v1 => 'juicephone' do
  version '2.4.1'
  sha256 '4c5edb9197f7ae093681e810692b81e447a063cc0a59c025afc59cea0f59d33e'

  url "http://download.addpod.de/juicephone/#{version}"
  name 'JuicePhone'
  appcast 'http://update.addpod.com/juicephone.xml',
          :sha256 => '771453d462d524ff73c53318489aa7719ee63a2a84a41a4c049cc12bc195c1e7'
  homepage 'http://addpod.com/juicephone'
  license :gratis

  app 'JuicePhone.app'
end
