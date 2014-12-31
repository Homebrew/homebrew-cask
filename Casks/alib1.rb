cask :v1 => 'alib1' do
  # note: "1" is not a version number, but an intrinsic part of the product name
  version :latest
  sha256 :no_check

  url 'http://presstube.com/screensavers/Presstube-ALib1-mac.zip'
  homepage 'http://presstube.com/blog/2011/alib1/'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  screen_saver 'Presstube-ALib1.app/Contents/Resources/Presstube - ALib1.saver'

  postflight do
    system '/usr/libexec/PlistBuddy', '-c', 'Set :CFBundleName ALib1 (Presstube)', "#{staged_path}/presstube-alib1.app/Contents/Resources/Presstube - ALib1.saver/Contents/Info.plist"
  end

  caveats <<-EOS.undent
    #{token} requires Adobe Air, available via

      brew cask install adobe-air
  EOS
end
