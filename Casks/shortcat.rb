cask "shortcat" do
  version "0.7.11,91"
  sha256 "bb62fcb6c644c1ccca356d0ac1ede1b29ebbc1cebe5809e186b3ba295ed51b07"

  url "https://files.shortcatapp.com/v#{version.csv.first}/Shortcat.zip"
  name "Sproutcube Shortcat"
  homepage "https://shortcatapp.com/"

  livecheck do
    url "https://shortcatapp.com/updates/appcast.xml"
    strategy :sparkle
  end

  app "Shortcat.app"

  zap trash: [
    "~/Library/Application Support/Shortcat",
    "~/Library/Cookies/com.sproutcube.Shortcat.binarycookies",
    "~/Library/Preferences/com.sproutcube.Shortcat.plist",
  ]
end
