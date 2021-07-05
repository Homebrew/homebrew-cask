cask "listen1" do
  # NOTE: "1" is not a version number, but an intrinsic part of the product name
  version "2.21.5"
  sha256 "93cddb7b193c65368892887e151ae93f1db9b500b9948c4560cf237d804fa44a"

  url "https://github.com/listen1/listen1_desktop/releases/download/v#{version}/Listen1_#{version}_mac.dmg",
      verified: "github.com/listen1/listen1_desktop/"
  name "Listen 1"
  desc "Search and play songs from a variety of online sources"
  homepage "https://listen1.github.io/listen1/"

  app "Listen1.app"
end
