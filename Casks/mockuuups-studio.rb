cask "mockuuups-studio" do
  version "3.4.0"
  sha256 "60d237d8d044785c2c60fb2406b1ab4db68080e2735d61aab1736201011ebc87"

  url "https://binaries.mockuuups.com/Mockuuups%20Studio-#{version}-mac.zip",
      verified: "mockuuups.com/"
  name "Mockuuups Studio"
  desc "Allows designers and marketers to drag and drop visuals into scenes"
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
