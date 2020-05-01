cask 'lifesize' do
  version '2.210.2657'
  sha256 'd5ff9ac654868c8bb9a090c46bfdf002b0b95fac0c35090c4f62393741dc01e4'

  # download.lifesizecloud.com/ was verified as official when first introduced to the cask
  url "https://download.lifesizecloud.com/Lifesize-#{version}.dmg"
  name 'lifesize'
  homepage 'https://www.lifesize.com/'

  app 'Lifesize.app'
end
