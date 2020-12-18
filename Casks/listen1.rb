cask "listen1" do
  # NOTE: "1" is not a version number, but an intrinsic part of the product name
  version "2.17.1"
  sha256 "c6620855d56cb51a446b559d6ae2e96e220e02123301b1c1e6cc59e45bcd422d"

  url "https://github.com/listen1/listen1_desktop/releases/download/v#{version}/Listen1_#{version}_mac.dmg",
      verified: "github.com/listen1/listen1_desktop/"
  appcast "https://github.com/listen1/listen1_desktop/releases.atom"
  name "Listen 1"
  desc "Search and play songs from a variety of online sources"
  homepage "https://listen1.github.io/listen1/"

  app "Listen1.app"
end
