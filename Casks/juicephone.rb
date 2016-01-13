cask 'juicephone' do
  version '2.4.1'
  sha256 '4c5edb9197f7ae093681e810692b81e447a063cc0a59c025afc59cea0f59d33e'

  url "http://download.addpod.de/juicephone/#{version}"
  appcast 'http://update.addpod.com/juicephone.xml',
          :sha256 => '6b7e3d2cd46ae9fac2dafdfba486c729bd91856142a10a32f727f85d972ffd97'
  name 'JuicePhone'
  homepage 'http://addpod.com/juicephone'
  license :gratis

  app 'JuicePhone.app'
end
