cask 'seafile-client' do
  version '6.2.11'
  sha256 'f71a003603c8f49410ac753153f39bd2c92210ccbb10d2878e07e98cfaedc5fd'

  # seadrive.org was verified as official when first introduced to the cask
  url "https://download.seadrive.org/seafile-client-#{version}.dmg"
  appcast 'https://manual.seafile.com/changelog/client-changelog.html'
  name 'Seafile Client'
  homepage 'https://www.seafile.com/'

  app 'Seafile Client.app'
end
