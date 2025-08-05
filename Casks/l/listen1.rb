cask "listen1" do
  # NOTE: "1" is not a version number, but an intrinsic part of the product name
  arch arm: "arm64", intel: "x64"

  version "2.33.0"
  sha256 arm:   "c965cd8fc38f9cb4d265b2879be4766d24314196c5e6fd29be3a989c68457e90",
         intel: "e937357a3c993cfaf8d5bcad01adb00d81da64aa11f1f02c1bb8f120bb844dcf"

  url "https://github.com/listen1/listen1_desktop/releases/download/v#{version}/Listen1_#{version}_mac_#{arch}.dmg",
      verified: "github.com/listen1/listen1_desktop/"
  name "Listen 1"
  desc "Search and play songs from a variety of online sources"
  homepage "https://listen1.github.io/listen1/"

  depends_on macos: ">= :el_capitan"

  app "Listen1.app"

  zap trash: [
    "~/Library/Application Support/listen1",
    "~/Library/Preferences/com.listen1.listen1.plist",
  ]
end
