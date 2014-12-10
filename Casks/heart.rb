cask :v1 => 'heart' do
  version :latest
  sha256 :no_check

  url 'http://presstube.com/screensavers/presstube-heart-mac.zip'
  homepage 'http://presstube.com/blog/2011/heart/'
  license :unknown    # todo: improve this machine-generated value

  screen_saver 'presstube-heart.app/Contents/Resources/Presstube - Heart.saver'

  postflight do
    system '/usr/libexec/PlistBuddy', '-c', 'Set :CFBundleName Heart (Presstube)', "#{staged_path}/presstube-heart.app/Contents/Resources/Presstube - Heart.saver/Contents/Info.plist"
  end

  # todo: transitional, replace #{self.name...} with #{token}
  caveats <<-EOS.undent
    #{self.name.sub(/^KlassPrefix/,'').gsub(/([a-zA-Z\d])([A-Z])/,'\1-\2').gsub(/([a-zA-Z\d])([A-Z])/,'\1-\2').downcase} requires Adobe Air, available via

      brew cask install adobe-air
  EOS
end
