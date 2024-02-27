cask "shortcat" do
  version "0.11.4"
  sha256 "d2e840194e72f7ca0e2c094ced4bb8756c8af3945f351e5cf33dd4ecb1e2f20f"

  url "https://files.shortcat.app/releases/v#{version}/Shortcat.zip"
  name "Sproutcube Shortcat"
  desc "App that enables mouse-free UI interaction"
  homepage "https://shortcat.app/"

  livecheck do
    url "https://updates.shortcat.app/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: ">= :big_sur"

  app "Shortcat.app"

  zap trash: [
    "~/Library/Application Support/Shortcat",
    "~/Library/Caches/com.sproutcube.Shortcat",
    "~/Library/Caches/SentryCrash/Shortcat",
    "~/Library/Cookies/com.sproutcube.Shortcat.binarycookies",
    "~/Library/HTTPStorages/com.sproutcube.Shortcat",
    "~/Library/Preferences/com.sproutcube.Shortcat.plist",
    "~/Library/WebKit/com.sproutcube.Shortcat",
  ]
end
