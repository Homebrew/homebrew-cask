cask "scrapp" do
  version "1.6"
  sha256 "fdc29a6f404d88b17cc73c2bccb0bde782be1f86d8d165d3f9b4c3b83f6fdf61"

  url "https://scrapp.me/download/mac"
  name "Scrapp"
  desc "Screenshot tool with cloud storage"
  homepage "https://scrapp.me/"

  app "Scrapp.app"

  zap trash: [
    "/Users/daniel/Library/Caches/com.noArt.Scrapp",
    "/Users/daniel/Library/Application Support/com.noArt.Scrapp",
  ]
end
