cask 'liclipse' do
  version '5.2.4,u9a8kuvxrcxdw71'
  sha256 'dac86c4f478d67dbb20787aa9857fbf92ebe942c2ebef84c049cbec58d9009f1'

  # mediafire.com/file was verified as official when first introduced to the cask
  url "https://www.mediafire.com/file/#{version.after_comma}/liclipse_#{version.before_comma}_macosx.cocoa.x86_64.dmg"
  appcast 'https://www.liclipse.com/download.html'
  name 'LiClipse'
  homepage 'https://www.liclipse.com/'

  app 'LiClipse.app'
end
