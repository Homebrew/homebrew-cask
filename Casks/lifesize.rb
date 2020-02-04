cask 'lifesize' do
  version '2.210.2578'
  sha256 'b2843d5b2773dfacdd00d9cb3b27ebca4c563d5c64aae12af6e93ce07b93c09f'

  # download.lifesizecloud.com/Lifesize- was verified as official when first introduced to the cask
  url "https://download.lifesizecloud.com/Lifesize-#{version}.dmg"
  name 'lifesize'
  homepage 'https://www.lifesize.com/'

  app 'Lifesize.app'
end
