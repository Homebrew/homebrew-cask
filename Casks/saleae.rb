cask :v1 => 'saleae' do
  version '1.2.5'
  sha256 '6699a0da5b14c85da662d2df3b8c6453459a49c1be7e833854bbb000bfce9288'

  url 'http://downloads.saleae.com/betas/1.2.5/Logic-1.2.5-Darwin.dmg'
  name 'Saleae Logic'
  homepage 'http://saleae.com'
  license :closed

  app 'Logic.app'
end
