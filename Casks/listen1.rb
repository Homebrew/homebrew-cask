cask "listen1" do
  # NOTE: "1" is not a version number, but an intrinsic part of the product name
  version "2.19.0"
  sha256 "223dabacea168fd7bf860430f1c75d6e623a9eb1b7836585146a516c623a2783"

  url "https://github.com/listen1/listen1_desktop/releases/download/v#{version}/Listen1_#{version}_mac.dmg",
      verified: "github.com/listen1/listen1_desktop/"
  appcast "https://github.com/listen1/listen1_desktop/releases.atom"
  name "Listen 1"
  desc "Search and play songs from a variety of online sources"
  homepage "https://listen1.github.io/listen1/"

  app "Listen1.app"
end
