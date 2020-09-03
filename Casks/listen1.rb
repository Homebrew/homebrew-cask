cask "listen1" do
  # note: "1" is not a version number, but an intrinsic part of the product name
  version "2.12.3"
  sha256 "9bf5164c206c3232267a45de7bf5efac37089df26b839a4fbcb2f43f027f7131"

  # github.com/listen1/listen1_desktop/ was verified as official when first introduced to the cask
  url "https://github.com/listen1/listen1_desktop/releases/download/v#{version}/Listen1_#{version}_mac.dmg"
  appcast "https://github.com/listen1/listen1_desktop/releases.atom"
  name "Listen 1"
  homepage "https://listen1.github.io/listen1/"

  app "Listen1.app"
end
