cask "listen1" do
  # note: "1" is not a version number, but an intrinsic part of the product name
  version "2.14.0"
  sha256 "1690ff0d136a164590293b7a53ab271b52b5a48abde7b586bfc5171e361507a7"

  # github.com/listen1/listen1_desktop/ was verified as official when first introduced to the cask
  url "https://github.com/listen1/listen1_desktop/releases/download/v#{version}/Listen1_#{version}_mac.dmg"
  appcast "https://github.com/listen1/listen1_desktop/releases.atom"
  name "Listen 1"
  homepage "https://listen1.github.io/listen1/"

  app "Listen1.app"
end
