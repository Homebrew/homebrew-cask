cask 'seadrive' do
  version '1.0.11'
  sha256 '7b38a0b4870e2ac8221dc737c0b16fa2ab9d41604a20be017069dd71fe60900a'

  # download.seadrive.org was verified as official when first introduced to the cask
  url "https://download.seadrive.org/seadrive-#{version}.dmg"
  appcast 'https://www.seafile.com/en/download/'
  name 'Seadrive'
  homepage 'https://www.seafile.com/en/home/'

  app 'Seadrive.app'
end
