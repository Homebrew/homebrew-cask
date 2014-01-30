class Alib1 < Cask
  url 'http://presstube.com/screensavers/Presstube-ALib1-mac.zip'
  homepage 'http://presstube.com/blog/2011/alib1/'
  version 'latest'
  no_checksum
  screen_saver 'Presstube-ALib1.app/Contents/Resources/Presstube - ALib1.saver'

  after_install do
    system "/usr/libexec/PlistBuddy -c \"Set :CFBundleName ALib1 (Presstube)\" #{destination_path}/presstube-alib1.app/Contents/Resources/Presstube\\ -\\ ALib1.saver/Contents/Info.plist"
  end

  caveats do
    <<-EOS.undent
    If you have issue running #{@cask}, try installing Adobe Air with

        brew cask install adobe-air

    EOS
  end
end
