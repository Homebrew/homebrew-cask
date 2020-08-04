cask "listen1" do
  # note: "1" is not a version number, but an intrinsic part of the product name
  version "2.11.0"
  sha256 "7c4b60bf4baf48879ba57b6daf080a9d6e71bfb2546714a527b928730cbc17a4"

  # github.com/listen1/listen1_desktop/ was verified as official when first introduced to the cask
  url "https://github.com/listen1/listen1_desktop/releases/download/v#{version}/Listen1_#{version}_mac.dmg"
  appcast "https://github.com/listen1/listen1_desktop/releases.atom"
  name "Listen 1"
  homepage "https://listen1.github.io/listen1/"

  app "Listen1.app"
end
