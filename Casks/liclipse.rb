cask 'liclipse' do
  version '5.3.0,c0dcsho551y0brr'
  sha256 '6c1c342018cf8f76c84bcce82536ccfc4100fe9d05aeb4a67f5dcadf810ec08b'

  # mediafire.com/file was verified as official when first introduced to the cask
  url "https://www.mediafire.com/file/#{version.after_comma}/liclipse_#{version.before_comma}_macosx.cocoa.x86_64.dmg"
  appcast 'https://www.liclipse.com/download.html'
  name 'LiClipse'
  homepage 'https://www.liclipse.com/'

  app 'LiClipse.app'
end
