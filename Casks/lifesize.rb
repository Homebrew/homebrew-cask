cask 'lifesize' do
  version '2.210.2697'
  sha256 'ad39f87845e320bbc5a8cbd1edcd55118aa37719b4703883a55bb8b1676f30a6'

  # download.lifesizecloud.com/ was verified as official when first introduced to the cask
  url "https://download.lifesizecloud.com/Lifesize-#{version}.dmg"
  name 'lifesize'
  homepage 'https://www.lifesize.com/'

  app 'Lifesize.app'
end
