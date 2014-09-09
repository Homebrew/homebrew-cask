class Chunkulus < Cask
  version 'latest'
  sha256 :no_check

  url 'http://presstube.com/screensavers/presstube-chunkulus-mac.zip'
  homepage 'http://presstube.com/blog/2011/chunkulus/'

  screen_saver 'presstube-chunkulus.app/Contents/Resources/Presstube - Chunkulus.saver'

  postflight do
    system '/usr/libexec/PlistBuddy', '-c', 'Set :CFBundleName Chunkulus (Presstube)', "#{destination_path}/presstube-chunkulus.app/Contents/Resources/Presstube - Chunkulus.saver/Contents/Info.plist"
  end

  caveats do
    <<-EOS.undent
    If you have issue running #{@cask}, try installing Adobe Air with

        brew cask install adobe-air

    EOS
  end
end
