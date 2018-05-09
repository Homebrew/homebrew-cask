cask 'seafile-client' do
  version '6.1.8'
  sha256 'f3a3154b33e1f34d2af1645ad8ce18edb3dd6373f1e544a85cbd14902ee065f1'

  # seadrive.org was verified as official when first introduced to the cask
  url "https://download.seadrive.org/seafile-client-#{version}.dmg"
  name 'Seafile Client'
  homepage 'https://www.seafile.com/'

  app 'Seafile Client.app'
end
