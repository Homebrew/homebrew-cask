cask "cassette" do
  version "1.7.0+15"
  sha256 "b901b76e42068aa87a22f6f43d10b8a722cbd789e48af035fcf6a3286ad2ea43"

  url "https://github.com/MathieuDubart/cassette/releases/download/v1.7.0%2B15/Cassette-#{version}.dmg"
  name "Cassette"
  desc "Native macOS/iOS Subsonic music client"
  homepage "https://getcassette.app"

  app "Cassette.app"

  zap trash: [
    "~/Library/Application Support/fr.mathieu-dubart.Cassette",
    "~/Library/Preferences/fr.mathieu-dubart.Cassette.plist",
    "~/Library/Caches/fr.mathieu-dubart.Cassette",
  ]
end