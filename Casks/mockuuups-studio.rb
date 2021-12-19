cask "mockuuups-studio" do
  arch = Hardware::CPU.intel? ? "" : "arm64-"

  version "3.5.0"

  if Hardware::CPU.intel?
    sha256 "ed795198679c5206b77f10b42a1fb963cbe887aab9be94a742c6d1dce048235e"
  else
    sha256 "b5f743b9185451df86ee71f7d4cbb488c483eb73e7654554304b8c5bca47c6aa"
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
