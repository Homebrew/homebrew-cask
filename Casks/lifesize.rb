cask 'lifesize' do
  version '2.210.2708'
  sha256 '2dd3e4563561031fa7be078c15e79d3eb5996cfc5c4a5fbfe64c7d9942e5f7c0'

  # download.lifesizecloud.com/ was verified as official when first introduced to the cask
  url "https://download.lifesizecloud.com/Lifesize-#{version}.dmg"
  name 'lifesize'
  homepage 'https://www.lifesize.com/'

  app 'Lifesize.app'
end
