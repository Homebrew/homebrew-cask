cask "shortcat" do
  version "0.11.1,174"
  sha256 "6a2d3cf21754c81f4e92c65410fa5d3a24f2149cb6f6f36146ab4f91962ca5b1"

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
