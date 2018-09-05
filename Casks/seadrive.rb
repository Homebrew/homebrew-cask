cask 'seadrive' do
  version '0.9.4'
  sha256 '077e8562b2cc2aeefdcc252582a440677a368212969a2472d984acab74d9f1d3'

  # download.seadrive.org was verified as official when first introduced to the cask
  url "https://download.seadrive.org/seadrive-#{version}.dmg"
  name 'Seadrive'
  homepage 'https://www.seafile.com/en/home/'

  app 'Seadrive.app'
end
