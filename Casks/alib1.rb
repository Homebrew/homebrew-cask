class Alib1 < Cask
  # note: "1" is not a version number, but an intrinsic part of the product name
  version :latest
  sha256 :no_check

  url 'http://presstube.com/screensavers/Presstube-ALib1-mac.zip'
  homepage 'http://presstube.com/blog/2011/alib1/'

  screen_saver 'Presstube-ALib1.app/Contents/Resources/Presstube - ALib1.saver'

  postflight do
    system '/usr/libexec/PlistBuddy', '-c', 'Set :CFBundleName ALib1 (Presstube)', "#{destination_path}/presstube-alib1.app/Contents/Resources/Presstube - ALib1.saver/Contents/Info.plist"
  end

  caveats do
    <<-EOS.undent
    If you have issue running #{@cask}, try installing Adobe Air with

        brew cask install adobe-air

    EOS
  end
end
