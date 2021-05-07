cask "mockuuups-studio" do
  version "3.1.0"
  sha256 "5935dea82713be5ec18c7ff81bd0b6f7b69503b1c365e91a54ffccbfa9b767f8"

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
