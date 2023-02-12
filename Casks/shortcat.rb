cask "shortcat" do
  version "0.11.4,178"
  sha256 "d2e840194e72f7ca0e2c094ced4bb8756c8af3945f351e5cf33dd4ecb1e2f20f"

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
