class Heart < Cask
  url 'http://presstube.com/screensavers/presstube-heart-mac.zip'
  homepage 'http://presstube.com/blog/2011/heart/'
  version 'latest'
  no_checksum
  screen_saver 'presstube-heart.app/Contents/Resources/Presstube - Heart.saver'

  after_install do
    system "/usr/libexec/PlistBuddy -c \"Set :CFBundleName Heart (Presstube)\" #{destination_path}/presstube-heart.app/Contents/Resources/Presstube\\ -\\ Heart.saver/Contents/Info.plist"
  end

  caveats do
    <<-EOS.undent
    If you have issue running #{@cask}, try installing Adobe Air with

        brew cask install adobe-air

    EOS
  end
end
