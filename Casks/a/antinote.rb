cask "antinote" do
  version "1.1.7"
  sha256 "f0a900697929d981ba2ab1aaa7b538a232d895ff53e38d42e1e6c9b9a769e7e5"

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
