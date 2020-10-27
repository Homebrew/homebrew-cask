cask "listen1" do
  # note: "1" is not a version number, but an intrinsic part of the product name
  version "2.15.1"
  sha256 "d395bb1ef924f98c91299b099de3a6857861161d626d5352579232c08cc5f622"

  # github.com/listen1/listen1_desktop/ was verified as official when first introduced to the cask
  url "https://github.com/listen1/listen1_desktop/releases/download/v#{version}/Listen1_#{version}_mac.dmg"
  appcast "https://github.com/listen1/listen1_desktop/releases.atom"
  name "Listen 1"
  desc "Search and play songs from a variety of online sources"
  homepage "https://listen1.github.io/listen1/"

  app "Listen1.app"
end
