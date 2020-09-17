cask "listen1" do
  # note: "1" is not a version number, but an intrinsic part of the product name
  version "2.13.0"
  sha256 "54a30c23890467d7fdae327815963c2e6c259f5d1140a080b56b8faa4d0ae3b4"

  # github.com/listen1/listen1_desktop/ was verified as official when first introduced to the cask
  url "https://github.com/listen1/listen1_desktop/releases/download/v#{version}/Listen1_#{version}_mac.dmg"
  appcast "https://github.com/listen1/listen1_desktop/releases.atom"
  name "Listen 1"
  homepage "https://listen1.github.io/listen1/"

  app "Listen1.app"
end
