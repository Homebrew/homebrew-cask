cask "mockuuups-studio" do
  arch = Hardware::CPU.intel? ? "" : "arm64-"

  version "3.7.0"

  if Hardware::CPU.intel?
    sha256 "1b5897be81511a1a8dc7fd3f19824adc3186898fae9bdaed7e1bcd3469e22dcf"
  else
    sha256 "deefb92a749360fc2c524c427b3c462f0220a8fa5797fe2d634a009f476a03da"
  end

  url "https://binaries.mockuuups.com/Mockuuups%20Studio-#{version}-#{arch}mac.zip",
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
