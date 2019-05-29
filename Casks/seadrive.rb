cask 'seadrive' do
  version '1.0.4'
  sha256 '168db90129a3c344f88bc174e45c04b774e8f0342d6276cd1de878718f685c8a'

  # download.seadrive.org was verified as official when first introduced to the cask
  url "https://download.seadrive.org/seadrive-#{version}.dmg"
  name 'Seadrive'
  homepage 'https://www.seafile.com/en/home/'

  app 'Seadrive.app'
end
