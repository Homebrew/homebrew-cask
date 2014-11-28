cask :v1 => 'chunkulus' do
  version :latest
  sha256 :no_check

  url 'http://presstube.com/screensavers/presstube-chunkulus-mac.zip'
  homepage 'http://presstube.com/blog/2011/chunkulus/'
  license :unknown

  screen_saver 'presstube-chunkulus.app/Contents/Resources/Presstube - Chunkulus.saver'

  postflight do
    system '/usr/libexec/PlistBuddy', '-c', 'Set :CFBundleName Chunkulus (Presstube)', "#{staged_path}/presstube-chunkulus.app/Contents/Resources/Presstube - Chunkulus.saver/Contents/Info.plist"
  end

  caveats <<-EOS.undent
    #{title} requires Adobe Air, available via

      brew cask install adobe-air
  EOS
end
