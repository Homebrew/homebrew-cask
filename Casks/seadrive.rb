cask 'seadrive' do
  version '1.0.3'
  sha256 '37f31127e15bea91b2f814bbca223da4c892f38e6e0418853baadb9cfdf5c667'

  # download.seadrive.org was verified as official when first introduced to the cask
  url "https://download.seadrive.org/seadrive-#{version}.dmg"
  name 'Seadrive'
  homepage 'https://www.seafile.com/en/home/'

  app 'Seadrive.app'
end
