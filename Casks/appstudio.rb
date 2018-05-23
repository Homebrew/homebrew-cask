cask 'appstudio' do
  version :latest
  sha256 :no_check

  # dl.dropboxusercontent.com/s/2w81ksjilfn2pu8 was verified as official when first introduced to the cask
  url 'https://dl.dropboxusercontent.com/s/2w81ksjilfn2pu8/AppStudio.dmg'
  name 'NSB/AppStudio'
  homepage 'https://www.nsbasic.com/'

  app 'AppStudio.app'
end
