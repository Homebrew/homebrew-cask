cask "listen1" do
  # NOTE: "1" is not a version number, but an intrinsic part of the product name
  version "2.17.2"
  sha256 "15f652ac02e7209b01c72f38ddbbba07741732a5d3fb44f0faaeaa97311cbb00"

  url "https://github.com/listen1/listen1_desktop/releases/download/v#{version}/Listen1_#{version}_mac.dmg",
      verified: "github.com/listen1/listen1_desktop/"
  appcast "https://github.com/listen1/listen1_desktop/releases.atom"
  name "Listen 1"
  desc "Search and play songs from a variety of online sources"
  homepage "https://listen1.github.io/listen1/"

  app "Listen1.app"
end
