cask "scrapp" do
  version "1.6"
  sha256 "fdc29a6f404d88b17cc73c2bccb0bde782be1f86d8d165d3f9b4c3b83f6fdf61"

  url "https://scrap.blob.core.windows.net/download/#{version}/Scrapp.zip",
      verified: "scrap.blob.core.windows.net/"
  name "Scrapp"
  desc "Screenshot tool with cloud storage"
  homepage "https://scrapp.me/"

  livecheck do
    url "https://scrapp.me/download/mac"
    strategy :header_match
  end

  app "Scrapp.app"

  zap trash: [
    "~/Library/Application Support/com.noArt.Scrapp",
    "~/Library/Caches/com.noArt.Scrapp",
  ]

  caveats do
    requires_rosetta
  end
end
