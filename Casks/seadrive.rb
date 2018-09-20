cask 'seadrive' do
  version '0.9.5'
  sha256 '53363818b7b52fb825f3fba434955ecf76475ca7a207172e6820b73e753380d5'

  # download.seadrive.org was verified as official when first introduced to the cask
  url "https://download.seadrive.org/seadrive-#{version}.dmg"
  name 'Seadrive'
  homepage 'https://www.seafile.com/en/home/'

  app 'Seadrive.app'
end
