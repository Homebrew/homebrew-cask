cask 'liclipse' do
  version '3.3.0'
  sha256 '918d8a388b093662ba3eb28211dc25d0f83351239666c57e19ab7b5ac484c1a8'

  # www.mediafire.com/file/n4thtt7j07941m8 was verified as official when first introduced to the cask
  url "http://www.mediafire.com/file/n4thtt7j07941m8/liclipse_#{version}_macosx.cocoa.x86_64.dmg"
  name 'LiClipse'
  homepage 'https://www.liclipse.com/'

  app 'LiClipse.app'
end
