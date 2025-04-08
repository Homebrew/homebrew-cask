cask "antinote" do
  version "1.1.5"
  sha256 "0b26a98389da595299d24f3485d3ba54be88b8a3e6dd66a152b1df6bd2e30a41"

  url "https://antinote.io/updates/Antinote_#{version}.dmg"
  name "Antinote"
  desc "Temporary notes with calculations and extensible features"
  homepage "https://antinote.io/"

  livecheck do
    url "https://antinote.io/updates/appcast.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: ">= :sonoma"

  app "Antinote.app"

  zap trash: [
    "~/Library/Application Scripts/com.chabomakers.Antinote",
    "~/Library/Containers/com.chabomakers.Antinote",
  ]
end
