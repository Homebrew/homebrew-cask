cask "geburtstagschecker" do
  version "1.8.2,195"
  sha256 :no_check

  url "https://earthlingsoft.net/GeburtstagsChecker/GeburtstagsChecker.zip"
  name "GeburtstagsChecker"
  homepage "https://earthlingsoft.net/GeburtstagsChecker/"

  livecheck do
    url "https://earthlingsoft.net/GeburtstagsChecker/appcast.xml"
    strategy :sparkle
  end

  app "GeburtstagsChecker #{version.before_comma} (#{version.after_comma})/GeburtstagsChecker.app"

  zap trash: [
    "~/Library/Caches/earthlingsoft.GeburtstagsChecker",
    "~/Library/Preferences/earthlingsoft.GeburtstagsChecker.plist",
  ]
end
