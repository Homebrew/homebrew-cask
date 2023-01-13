cask "jitouch" do
  version :latest
  sha256 :no_check

  on_el_capitan :or_older do
    url "https://www.jitouch.com/jitouch_el_capitan.zip"
  end
  on_sierra do
    url "https://www.jitouch.com/jitouch_sierra.zip"
  end
  on_high_sierra :or_newer do
    url "https://www.jitouch.com/jitouch_mojave.zip"
  end

  name "jitouch"
  desc "Multi-touch gestures editor"
  homepage "https://www.jitouch.com/"

  prefpane "jitouch/Jitouch.prefPane"

  zap trash: "~/Library/Preferences/com.jitouch.Jitouch.plist"
end
