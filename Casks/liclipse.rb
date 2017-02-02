cask 'liclipse' do
  version '3.4.0'
  sha256 '22099c6ff59c91670f1878bb6a8ca97e02f5ad6c76d66c0b64eced147adfe85a'

  # mediafire.com/file/pw05os9ewtfb35k was verified as official when first introduced to the cask
  url "http://www.mediafire.com/file/pw05os9ewtfb35k/liclipse_#{version}_macosx.cocoa.x86_64.dmg"
  name 'LiClipse'
  homepage 'https://www.liclipse.com/'

  app 'LiClipse.app'
end
