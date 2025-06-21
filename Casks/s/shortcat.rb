cask "shortcat" do
  version "0.12.0"
  sha256 "944726bea5844e83eea1516c1f27857e343322ae0c8523503241bd416bdb1d00"

  url "https://files.shortcat.app/releases/v#{version}/Shortcat.zip"
  name "Sproutcube Shortcat"
  desc "App that enables mouse-free UI interaction"
  homepage "https://shortcat.app/"

  livecheck do
    url "https://updates.shortcat.app/appcast.xml"
    strategy :sparkle, &:short_version
  end

  no_autobump! because: :requires_manual_review

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
