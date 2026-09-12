cask "antinote" do
  version "2.1.2"
  sha256 "09bb5f5277046f68eb08a992a0f610266ec9964335b6d17643bdb56ae10da760"

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
