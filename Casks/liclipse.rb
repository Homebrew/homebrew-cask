cask 'liclipse' do
  version '5.2.2,nfynbnaeb3q9wv4'
  sha256 '508e50ca245b6dc21ada3406f2306aad3fe8d67cf7a6e1cfafe5696beac13d2c'

  # mediafire.com/file was verified as official when first introduced to the cask
  url "https://www.mediafire.com/file/#{version.after_comma}/liclipse_#{version.before_comma}_macosx.cocoa.x86_64.dmg"
  appcast 'https://www.liclipse.com/download.html'
  name 'LiClipse'
  homepage 'https://www.liclipse.com/'

  app 'LiClipse.app'
end
