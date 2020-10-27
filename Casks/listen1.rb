cask "listen1" do
  # note: "1" is not a version number, but an intrinsic part of the product name
  version "2.16.1"
  sha256 "c47e4ec4731db7f57463b7d925dc015e43b78e5816ae4f21f694a698701efd63"

  # github.com/listen1/listen1_desktop/ was verified as official when first introduced to the cask
  url "https://github.com/listen1/listen1_desktop/releases/download/v#{version}/Listen1_#{version}_mac.dmg"
  appcast "https://github.com/listen1/listen1_desktop/releases.atom"
  name "Listen 1"
  desc "Search and play songs from a variety of online sources"
  homepage "https://listen1.github.io/listen1/"

  app "Listen1.app"
end
