cask 'seafile-client' do
  version '6.1.6'
  sha256 'd48dbb00aeecf5e7557db94be177712dd9c8a8cdf165be93cd831f7ebd8e3aa2'

  # seadrive.org was verified as official when first introduced to the cask
  url "https://download.seadrive.org/seafile-client-#{version}.dmg"
  name 'Seafile Client'
  homepage 'https://www.seafile.com/'

  app 'Seafile Client.app'
end
