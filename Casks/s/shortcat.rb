cask "shortcat" do
  version "0.12.1"
  sha256 "a54465e2ef79eac87edf654856325576ec933e8d5fc246063fe3075de99e58cf"

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
