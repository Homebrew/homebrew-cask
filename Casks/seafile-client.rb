cask 'seafile-client' do
  version '6.2.4'
  sha256 '5412715344d257b7268111a642c6d22f8de0ca88ec5e07de2e8954856651566c'

  # seadrive.org was verified as official when first introduced to the cask
  url "https://download.seadrive.org/seafile-client-#{version}.dmg"
  appcast 'https://manual.seafile.com/changelog/client-changelog.html'
  name 'Seafile Client'
  homepage 'https://www.seafile.com/'

  app 'Seafile Client.app'
end
