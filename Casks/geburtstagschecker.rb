cask "geburtstagschecker" do
  version "1.8.2,195"
  sha256 :no_check

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
