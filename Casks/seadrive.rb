cask 'seadrive' do
  version '1.0.1'
  sha256 '14dcffc43e432417bb28d4b09832269f772c383f6f469599967b3e3907da97d2'

  # download.seadrive.org was verified as official when first introduced to the cask
  url "https://download.seadrive.org/seadrive-#{version}.dmg"
  name 'Seadrive'
  homepage 'https://www.seafile.com/en/home/'

  app 'Seadrive.app'
end
