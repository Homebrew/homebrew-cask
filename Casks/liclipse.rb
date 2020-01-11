cask 'liclipse' do
  version '6.1.0,yau5fhnopa6zx04'
  sha256 '4c653227a5fb44f570aca52e84796bab3865cac7128b5e0c7b4b943dca21a363'

  # mediafire.com/file was verified as official when first introduced to the cask
  url "https://www.mediafire.com/file/#{version.after_comma}/liclipse_#{version.before_comma}_macosx.cocoa.x86_64.dmg"
  appcast 'https://www.liclipse.com/download.html'
  name 'LiClipse'
  homepage 'https://www.liclipse.com/'

  app 'LiClipse.app'
end
