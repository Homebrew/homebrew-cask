cask 'liclipse' do
  version '6.0.0,ve32xytlixmlg3x'
  sha256 'd26d250e9edecf99108e3e37e07014f8a4347d74d9dce583c2ac1481ec3c94c3'

  # mediafire.com/file was verified as official when first introduced to the cask
  url "https://www.mediafire.com/file/#{version.after_comma}/liclipse_#{version.before_comma}_macosx.cocoa.x86_64.dmg"
  appcast 'https://www.liclipse.com/download.html'
  name 'LiClipse'
  homepage 'https://www.liclipse.com/'

  app 'LiClipse.app'
end
