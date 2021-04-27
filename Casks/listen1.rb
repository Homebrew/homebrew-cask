cask "listen1" do
  # NOTE: "1" is not a version number, but an intrinsic part of the product name
  version "2.21.1"
  sha256 "2fd0eb3af67fe1ebadd2b4ca0f13ec09e88e7b54a55eb5e540bbeafa17e394ba"

  url "https://github.com/listen1/listen1_desktop/releases/download/v#{version}/Listen1_#{version}_mac.dmg",
      verified: "github.com/listen1/listen1_desktop/"
  name "Listen 1"
  desc "Search and play songs from a variety of online sources"
  homepage "https://listen1.github.io/listen1/"

  app "Listen1.app"
end
