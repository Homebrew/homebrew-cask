cask 'seafile-client' do
  version '6.2.5'
  sha256 'c75e36eae7e7816c306afc3a5d5f1ac3f97b3caa097c7d58843bf458155deecf'

  # seadrive.org was verified as official when first introduced to the cask
  url "https://download.seadrive.org/seafile-client-#{version}.dmg"
  appcast 'https://manual.seafile.com/changelog/client-changelog.html'
  name 'Seafile Client'
  homepage 'https://www.seafile.com/'

  app 'Seafile Client.app'
end
