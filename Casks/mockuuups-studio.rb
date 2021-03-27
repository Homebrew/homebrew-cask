cask "mockuuups-studio" do
  version "3.0.0"
  sha256 "0bed0aaaa60e84b3f9dc02e9c9dcb32df6e2c8e4533dc5641b2373863d9c3cb5"

  url "https://binaries.mockuuups.com/Mockuuups%20Studio-#{version}-mac.zip",
      verified: "mockuuups.com/"
  name "Mockuuups Studio"
  homepage "https://mockuuups.studio/"

  livecheck do
    url "https://mockuuups.studio/download/mac/"
    strategy :header_match
  end

  app "Mockuuups Studio.app"

  zap trash: [
    "~/Library/Application Support/Mockuuups Studio",
    "~/Library/Caches/com.mockuuups.studio-app",
    "~/Library/Caches/com.mockuuups.studio-app.ShipIt",
    "~/Library/Cookies/com.mockuuups.studio-app.binarycookies",
    "~/Library/Preferences/com.mockuuups.studio-app.helper.plist",
    "~/Library/Preferences/com.mockuuups.studio-app.plist",
    "~/Library/Saved Application State/com.mockuuups.studio-app.savedState",
  ]
end
