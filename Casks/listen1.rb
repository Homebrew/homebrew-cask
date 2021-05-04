cask "listen1" do
  # NOTE: "1" is not a version number, but an intrinsic part of the product name
  version "2.21.2"
  sha256 "9b1564a6067562afd98165120a027110260670c5cc215084ba6d40b6ed497336"

  url "https://github.com/listen1/listen1_desktop/releases/download/v#{version}/Listen1_#{version}_mac.dmg",
      verified: "github.com/listen1/listen1_desktop/"
  name "Listen 1"
  desc "Search and play songs from a variety of online sources"
  homepage "https://listen1.github.io/listen1/"

  app "Listen1.app"
end
