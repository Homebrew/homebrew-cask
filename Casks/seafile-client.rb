cask 'seafile-client' do
  version '7.0.7'
  sha256 'f1b8db34cad0bf5a86fbe55974e2c3506455dbd937d37ab732fc7f9053ed09f0'

  # seadrive.org/ was verified as official when first introduced to the cask
  url "https://download.seadrive.org/seafile-client-#{version}.dmg"
  appcast 'https://www.seafile.com/en/download/'
  name 'Seafile Client'
  homepage 'https://www.seafile.com/'

  app 'Seafile Client.app'
end
