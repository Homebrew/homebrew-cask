cask 'liclipse' do
  version '4.0.0'
  sha256 '4fc92d8b9165c3ac1b8df4d4f7a615e2950c949433f79c123734249892ce7762'

  # mediafire.com/file/s5qczei26kot9z5 was verified as official when first introduced to the cask
  url "http://www.mediafire.com/file/s5qczei26kot9z5/liclipse_#{version}_macosx.cocoa.x86_64.dmg"
  name 'LiClipse'
  homepage 'https://www.liclipse.com/'

  app 'LiClipse.app'
end
