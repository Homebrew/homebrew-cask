cask :v1 => 'heart' do
  version :latest
  sha256 :no_check

  url 'http://presstube.com/screensavers/presstube-heart-mac.zip'
  homepage 'http://presstube.com/blog/2011/heart/'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  screen_saver 'presstube-heart.app/Contents/Resources/Presstube - Heart.saver'

  postflight do
    system '/usr/libexec/PlistBuddy', '-c', 'Set :CFBundleName Heart (Presstube)', "#{staged_path}/presstube-heart.app/Contents/Resources/Presstube - Heart.saver/Contents/Info.plist"
  end

  depends_on :cask => 'adobe-air'
end
