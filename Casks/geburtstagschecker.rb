cask "geburtstagschecker" do
  version "1.8.2,195"
  sha256 "d811506bcf76ab922103bca6985396264c40a87c2c03945f951e49e3d14d4186"

  url "https://earthlingsoft.net/GeburtstagsChecker/GeburtstagsChecker.zip"
  appcast "https://earthlingsoft.net/GeburtstagsChecker/appcast.xml"
  name "GeburtstagsChecker"
  homepage "https://earthlingsoft.net/GeburtstagsChecker/"

  app "GeburtstagsChecker #{version.before_comma} (#{version.after_comma})/GeburtstagsChecker.app"

  zap trash: [
    "~/Library/Caches/earthlingsoft.GeburtstagsChecker",
    "~/Library/Preferences/earthlingsoft.GeburtstagsChecker.plist",
  ]
end
