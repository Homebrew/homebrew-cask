cask 'seafile-client' do
  version '6.2.3'
  sha256 '58b1b1f7a35dca7b92cf0db8e080ea70497fd88bea4b6f56704e443be935c954'

  # seadrive.org was verified as official when first introduced to the cask
  url "https://download.seadrive.org/seafile-client-#{version}.dmg"
  appcast 'https://manual.seafile.com/changelog/client-changelog.html'
  name 'Seafile Client'
  homepage 'https://www.seafile.com/'

  app 'Seafile Client.app'
end
