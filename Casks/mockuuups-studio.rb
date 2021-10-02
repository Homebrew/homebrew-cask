cask "mockuuups-studio" do
  version "3.3.0"

  if Hardware::CPU.intel?
    sha256 "bee40bd4b1f5ea28d3e76ec52364eb5092daca2e1324c769213da3b36a317b80"

    url "https://binaries.mockuuups.com/Mockuuups%20Studio-#{version}-mac.zip",
        verified: "mockuuups.com/"

    livecheck do
      url "https://mockuuups.studio/download/mac-x64/"
      strategy :header_match
    end
  else
    sha256 "25a8651323b219ba3ae9a83a63965641c4a0bca2e46d3f6aeb14adacd6726963"

    url "https://binaries.mockuuups.com/Mockuuups%20Studio-#{version}-arm64-mac.zip",
        verified: "mockuuups.com/"

    livecheck do
      url "https://mockuuups.studio/download/apple-sillicon/"
      strategy :header_match
    end
  end

  name "Mockuuups Studio"
  desc "Allows designers and marketers to drag and drop visuals into scenes"
  homepage "https://mockuuups.studio/"

  auto_updates true

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
