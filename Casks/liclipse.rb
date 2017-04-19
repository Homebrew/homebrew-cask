cask 'liclipse' do
  version '3.6.0'
  sha256 'f18001bbd6ad2efd90e6e2c44684a0af972ee08842f2d86da47fc04696efc384'

  # mediafire.com/file/31508h0na9823ns was verified as official when first introduced to the cask
  url "http://www.mediafire.com/file/31508h0na9823ns/liclipse_#{version}_macosx.cocoa.x86_64.dmg"
  name 'LiClipse'
  homepage 'https://www.liclipse.com/'

  app 'LiClipse.app'
end
