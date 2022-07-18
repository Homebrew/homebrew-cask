cask "shortcat" do
  version "0.9.3,155"
  sha256 "1f935f7fa49a640117396ae15cfe5cdfdfdb7269f16b2b3d61faf2f3e2cb5884"

  url "https://files.shortcat.app/releases/v#{version.csv.first}/Shortcat.zip"
  name "Sproutcube Shortcat"
  desc "App that enables mouse-free UI interaction"
  homepage "https://shortcat.app/"

  livecheck do
    url "https://updates.shortcat.app/appcast.xml"
    strategy :sparkle
  end

  depends_on macos: ">= :big_sur"

  app "Shortcat.app"

  zap trash: [
    "~/Library/Application Support/Shortcat",
    "~/Library/Cookies/com.sproutcube.Shortcat.binarycookies",
    "~/Library/Preferences/com.sproutcube.Shortcat.plist",
  ]
end
