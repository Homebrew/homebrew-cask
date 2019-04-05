cask 'appstudio' do
  version :latest
  sha256 :no_check

  # dl.dropboxusercontent.com/s/ojbaoqbg6ffneyl was verified as official when first introduced to the cask
  url 'https://dl.dropboxusercontent.com/s/ojbaoqbg6ffneyl/AppStudio.dmg'
  name 'NSB/AppStudio'
  homepage 'https://www.nsbasic.com/'

  app 'AppStudio.app'
end
