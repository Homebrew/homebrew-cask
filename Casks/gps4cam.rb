cask 'gps4cam' do
  version '7.2'
  sha256 :no_check

  # diguet.fr was verified as official when first introduced to the cask
  url "http://diguet.fr/gps4cam_EN/gps4cam/Download_files/gps4cam_V#{version.major_minor}.dmg"
  name 'gps4cam'
  homepage 'http://gps4cam.com/'

  app 'gps4cam.app'
end
