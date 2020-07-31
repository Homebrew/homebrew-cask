cask "jitouch" do
  version :latest
  sha256 :no_check

  if MacOS.version <= :el_capitan
    url "https://www.jitouch.com/jitouch_el_capitan.zip"
  elsif MacOS.version <= :sierra
    url "https://www.jitouch.com/jitouch_sierra.zip"
  else
    url "https://www.jitouch.com/jitouch_mojave.zip"
  end

  name "jitouch"
  homepage "https://www.jitouch.com/"

  prefpane "jitouch/Jitouch.prefPane"

  zap trash: "~/Library/Preferences/com.jitouch.Jitouch.plist"
end
