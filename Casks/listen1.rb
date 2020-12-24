cask "listen1" do
  # NOTE: "1" is not a version number, but an intrinsic part of the product name
  version "2.17.5"
  sha256 "cf7133585a660f66dd948358e42c1a1ea9a5b44a6cf18e8b98c01d7262ca8103"

  url "https://github.com/listen1/listen1_desktop/releases/download/v#{version}/Listen1_#{version}_mac.dmg",
      verified: "github.com/listen1/listen1_desktop/"
  appcast "https://github.com/listen1/listen1_desktop/releases.atom"
  name "Listen 1"
  desc "Search and play songs from a variety of online sources"
  homepage "https://listen1.github.io/listen1/"

  app "Listen1.app"
end
