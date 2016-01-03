cask 'alib1' do
  # note: "1" is not a version number, but an intrinsic part of the product name
  version :latest
  sha256 :no_check

  url 'http://presstube.com/screensavers/Presstube-ALib1-mac.zip'
  name 'ALib1'
  homepage 'http://presstube.com/blog/2011/alib1/'
  license :gratis

  depends_on :cask => 'adobe-air'

  postflight do
    system '/usr/libexec/PlistBuddy', '-c', 'Set :CFBundleName ALib1 (Presstube)', "#{staged_path}/presstube-alib1.app/Contents/Resources/Presstube - ALib1.saver/Contents/Info.plist"
  end

  screen_saver 'Presstube-ALib1.app/Contents/Resources/Presstube - ALib1.saver'
end
