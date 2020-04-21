cask 'lifesize' do
  version '2.210.2648'
  sha256 '26106c4badbe2948687eda43a356561297179eb60ac55b12b70965bd47b6c506'

  # download.lifesizecloud.com/ was verified as official when first introduced to the cask
  url "https://download.lifesizecloud.com/Lifesize-#{version}.dmg"
  name 'lifesize'
  homepage 'https://www.lifesize.com/'

  app 'Lifesize.app'
end
