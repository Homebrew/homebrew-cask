cask 'seafile-client' do
  version '7.0.4'
  sha256 '8cb5cd2b2ddf9c8f8ceba69f2f9312921113a46707478d65f0168e6ffe251e19'

  # seadrive.org was verified as official when first introduced to the cask
  url "https://download.seadrive.org/seafile-client-#{version}.dmg"
  appcast 'https://www.seafile.com/en/download/'
  name 'Seafile Client'
  homepage 'https://www.seafile.com/'

  app 'Seafile Client.app'
end
