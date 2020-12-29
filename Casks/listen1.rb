cask "listen1" do
  # NOTE: "1" is not a version number, but an intrinsic part of the product name
  version "2.17.8"
  sha256 "1d4ef3dd22bfc6149744ef40c9390d4da7ebf5d29c40e3fe160e175a0c981d0b"

  url "https://github.com/listen1/listen1_desktop/releases/download/v#{version}/Listen1_#{version}_mac.dmg",
      verified: "github.com/listen1/listen1_desktop/"
  appcast "https://github.com/listen1/listen1_desktop/releases.atom"
  name "Listen 1"
  desc "Search and play songs from a variety of online sources"
  homepage "https://listen1.github.io/listen1/"

  app "Listen1.app"
end
