cask "antinote" do
  version "2.1.0"
  sha256 "106bcf712a5890f3d5eeafe15013ef679fe5b8e438ee2f8db514eb7b46542681"

  url "https://antinote.io/updates/Antinote_#{version}.dmg"
  name "Antinote"
  desc "Temporary notes with calculations and extensible features"
  homepage "https://antinote.io/"

  livecheck do
    url "https://antinote.io/updates/appcast.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: :sonoma

  app "Antinote.app"

  zap trash: [
    "~/Library/Application Scripts/com.chabomakers.Antinote",
    "~/Library/Containers/com.chabomakers.Antinote",
  ]
end
