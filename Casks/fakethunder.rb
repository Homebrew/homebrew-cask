cask :v1 => 'fakethunder' do
  version '2.0.17'
  sha256 'c4f2d26535279e84b4b82d1e203b0efcc3bfaaed796d9fa7b587b17282f57a10'

  # martianlaboratory.com is the official download host per the vendor homepage
  url 'http://martianlaboratory.com/fakethunder/fakeThunder217.zip'
  appcast 'http://martianlaboratory.com/fakethunder/update.xml',
          :sha256 => '083d15a07f8702e1216f5ec39ee1879d1459e307a6ee7ae223651fed856dae93'
  name 'fakeThunder'
  homepage 'http://martianz.cn/fakethunder/'
  license :gpl

  app 'fakeThunder.app'
end
