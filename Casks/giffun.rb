cask 'giffun' do
  version '2008-03-13'
  sha256 '057e89ee3e5e39c82f40ea490f9f601a487bf688f55cd7e5e7e3b3f9ce812a4a'

  # dl.dropbox.com/u/2000860 was verified as official when first introduced to the cask
  url "https://dl.dropbox.com/u/2000860/GIFfun-#{version}.dmg"
  name 'GIFfun'
  homepage 'http://www.stone.com/GIFfun/'

  app 'GIFfun.app'
end
