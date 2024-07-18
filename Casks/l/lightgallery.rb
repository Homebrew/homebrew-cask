cask "lightgallery" do
  version "0.1.1"
  sha256 "5650328b475391c5c16cbc616096fe70a8ec7c8e5f19329fd2bd660d7ac104cd"

  url "https://github.com/sachinchoolur/lightgallery-desktop/releases/download/#{version}/lightgallery_#{version}.dmg-mac.zip",
      verified: "github.com/sachinchoolur/lightgallery-desktop/"
  name "lightgallery"
  homepage "https://sachinchoolur.github.io/lightgallery-desktop/"

  deprecate! date: "2024-07-18", because: :unmaintained

  app "lightgallery.app"

  zap trash: [
    "~/Library/Application Support/Lightgallery",
    "~/Library/Caches/Lightgallery",
    "~/Library/Preferences/lightgallery-desktop.plist",
  ]

  caveats do
    requires_rosetta
  end
end
