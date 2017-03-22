cask 'remember-the-milk' do
  version '1.1.3'
  sha256 '8817c88f395ca9d1d5ad74dbd69b01196ea27a46e4e691789fb0762a78886596'

  url "https://www.rememberthemilk.com/download/mac/RememberTheMilk-#{version}.zip"
  name 'Remember The Milk'
  homepage 'https://www.rememberthemilk.com/'

  app 'Remember The Milk.app'
end
