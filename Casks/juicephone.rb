cask 'juicephone' do
  version '2.4.1'
  sha256 '4c5edb9197f7ae093681e810692b81e447a063cc0a59c025afc59cea0f59d33e'

  url "http://download.addpod.de/juicephone/#{version}"
  appcast 'http://update.addpod.com/juicephone.xml',
          checkpoint: 'd2783c7f8f483409f5e251e27d8e54b50b549511e90fb0b0acab3b7c1778df4e'
  name 'JuicePhone'
  homepage 'http://addpod.com/juicephone'
  license :gratis

  app 'JuicePhone.app'
end
