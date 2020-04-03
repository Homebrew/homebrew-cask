cask 'lifesize' do
  version '2.210.2637'
  sha256 '28acaaad991223a48cc80ec3804dc63a0ee5bfdc5557e2877b5bfcd3a77e9c0a'

  # download.lifesizecloud.com/Lifesize- was verified as official when first introduced to the cask
  url "https://download.lifesizecloud.com/Lifesize-#{version}.dmg"
  name 'lifesize'
  homepage 'https://www.lifesize.com/'

  app 'Lifesize.app'
end
