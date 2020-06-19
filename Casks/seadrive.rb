cask 'seadrive' do
  version '2.0.3'
  sha256 'd15832a8e76fdb2126d2c81a497fc9e30b8d14cc8d0f32f68a340e6c5fad12b5'

  # download.seadrive.org/ was verified as official when first introduced to the cask
  url "https://download.seadrive.org/seadrive-#{version}.dmg"
  appcast 'https://www.seafile.com/en/download/'
  name 'Seadrive'
  homepage 'https://www.seafile.com/en/home/'

  app 'Seadrive.app'
end
