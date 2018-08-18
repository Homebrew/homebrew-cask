cask 'seadrive' do
  version '0.9.3'
  sha256 'e0704749a8fb6eb98cc74ebdb8a3fb590836a87708be4067688986b016d0c6ea'

  # download.seadrive.org was verified as official when first introduced to the cask
  url "https://download.seadrive.org/seadrive-#{version}.dmg"
  name 'Seadrive'
  homepage 'https://www.seafile.com/en/home/'

  app 'Seadrive.app'
end
