cask "listen1" do
  # note: "1" is not a version number, but an intrinsic part of the product name
  version "2.17.0"
  sha256 "fddd2246911649e6ac5242dcd31f3e855ef91f062622d3fa2894e24505b588d5"

  # github.com/listen1/listen1_desktop/ was verified as official when first introduced to the cask
  url "https://github.com/listen1/listen1_desktop/releases/download/v#{version}/Listen1_#{version}_mac.dmg"
  appcast "https://github.com/listen1/listen1_desktop/releases.atom"
  name "Listen 1"
  desc "Search and play songs from a variety of online sources"
  homepage "https://listen1.github.io/listen1/"

  app "Listen1.app"
end
