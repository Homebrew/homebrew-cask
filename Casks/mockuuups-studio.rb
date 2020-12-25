cask "mockuuups-studio" do
  version "2.6.0"
  sha256 "1e097714234369d25114dc14a7fd5df0c96ebe821ee3a2b59b9482d0fed55121"

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
