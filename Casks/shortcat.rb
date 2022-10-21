cask "shortcat" do
  version "0.11.0,173"
  sha256 "3fc350cbda1d58e0fcc111c14e668d1fb3825d7be042c322235ebd29fb000015"

  url "https://files.shortcat.app/releases/v#{version.csv.first}/Shortcat.zip"
  name "Sproutcube Shortcat"
  desc "App that enables mouse-free UI interaction"
  homepage "https://shortcat.app/"

  livecheck do
    url "https://updates.shortcat.app/appcast.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: ">= :big_sur"

  app "Shortcat.app"

  zap trash: [
    "~/Library/Application Support/Shortcat",
    "~/Library/Cookies/com.sproutcube.Shortcat.binarycookies",
    "~/Library/Preferences/com.sproutcube.Shortcat.plist",
  ]
end
