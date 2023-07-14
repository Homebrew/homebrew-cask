cask "listen1" do
  # NOTE: "1" is not a version number, but an intrinsic part of the product name
  arch arm: "arm64", intel: "x64"

  version "2.30.0"
  sha256 arm:   "cfaea06f656d941f5727e18c91f2d851f73a48e6cd9948322b9c1e6ce4306191",
         intel: "8e1971b2977c522f5052924a4914702546dbc0184774e1c69390a6605d379459"

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
