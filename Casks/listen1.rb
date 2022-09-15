cask "listen1" do
  # NOTE: "1" is not a version number, but an intrinsic part of the product name
  arch arm: "arm64", intel: "x64"

  version "2.26.1"
  sha256 arm:   "47beb5b2a9f3b5a72ef02ecf73ea38a63d5e2086e50919b55f4c5993ccc8dfd2",
         intel: "d5758372fb75cb3502372b2431ce3597144b0a77b07d5f258928a2ca0930e1d9"

  url "https://github.com/listen1/listen1_desktop/releases/download/v#{version}/Listen1_#{version}_mac_#{arch}.dmg",
      verified: "github.com/listen1/listen1_desktop/"
  name "Listen 1"
  desc "Search and play songs from a variety of online sources"
  homepage "https://listen1.github.io/listen1/"

  app "Listen1.app"

  zap trash: [
    "~/Library/Application Support/listen1",
    "~/Library/Preferences/com.listen1.listen1.plist",
  ]
end
