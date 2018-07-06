cask 'seadrive' do
  version '0.9.1'
  sha256 '13cb3a7ef84bf6cfaa0e7d6a5f8885dcb599e17914524bc7d66a509a487c4444'

  # download.seadrive.org was verified as official when first introduced to the cask
  url "https://download.seadrive.org/seadrive-#{version}.dmg"
  name 'Seadrive'
  homepage 'https://www.seafile.com/en/home/'

  app 'Seadrive.app'
end
