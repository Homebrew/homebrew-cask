cask "hp-easy-start" do
  version "2.15.0,240923"
  sha256 :no_check

  url "https://ftp.hp.com/pub/softlib/software12/HP_Quick_Start/osx/HP_Easy_Start.app.zip"
  name "HP Easy Start"
  desc "Set up your HP printer"
  homepage "https://support.hp.com/"

  livecheck do
    url :url
    strategy :extract_plist
  end

  app "HP Easy Start.app"

  zap trash: [
    "~/Library/Caches/com.hp.hp-easy-start",
    "~/Library/Cookies/com.hp.hp-easy-start.binarycookies",
    "~/Library/Logs/HP Easy Start.log",
    "~/Library/Preferences/com.hp.hp-easy-start.plist",
  ]
end
