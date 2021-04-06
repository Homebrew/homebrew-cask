cask "listen1" do
  # NOTE: "1" is not a version number, but an intrinsic part of the product name
  version "2.20.1"
  sha256 "d387e163e7f9baa07f10eead22f73ce95567212dee2c6edcee43271de149d6b5"

  url "https://github.com/listen1/listen1_desktop/releases/download/v#{version}/Listen1_#{version}_mac.dmg",
      verified: "github.com/listen1/listen1_desktop/"
  name "Listen 1"
  desc "Search and play songs from a variety of online sources"
  homepage "https://listen1.github.io/listen1/"

  app "Listen1.app"
end
