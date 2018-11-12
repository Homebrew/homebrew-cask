cask 'liclipse' do
  version '5.1.3'
  sha256 'b1a89184a6185d4a9f393912ad1446b2d2bc017ea362bebe35fdefc2db50c8d7'

  # download2267.mediafire.com/23daeigrqddg/32gtr23s399ec2x was verified as official when first introduced to the cask
  url "https://download2267.mediafire.com/23daeigrqddg/32gtr23s399ec2x/liclipse_#{version}_macosx.cocoa.x86_64.dmg"
  appcast 'https://www.liclipse.com/download.html'
  name 'LiClipse'
  homepage 'https://www.liclipse.com/'

  app 'LiClipse.app'
end
