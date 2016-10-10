cask 'chunkulus' do
  version :latest
  sha256 :no_check

  url 'http://presstube.com/screensavers/presstube-chunkulus-mac.zip'
  name 'Chunkulus'
  homepage 'http://presstube.com/blog/2011/chunkulus/'

  depends_on cask: 'adobe-air'

  screen_saver 'presstube-chunkulus.app/Contents/Resources/Presstube - Chunkulus.saver'

  postflight do
    system '/usr/libexec/PlistBuddy', '-c', 'Set :CFBundleName Chunkulus (Presstube)', "#{staged_path}/presstube-chunkulus.app/Contents/Resources/Presstube - Chunkulus.saver/Contents/Info.plist"
  end
end
