cask "keysmith" do
  version "1.18.2,95"
  sha256 "cff4de3067c2ca9da8109c72d4bcd5b7941417d5b2bb23fc4eb0daac5f9d7953"

  url "https://keysmith.app/versions/Keysmith-#{version.csv.first}.dmg"
  name "Keysmith"
  desc "Create custom keyboard shortcuts for anything"
  homepage "https://www.keysmith.app/"

  livecheck do
    url "https://www.keysmith.app/versions/appcast.xml"
    strategy :sparkle
  end

  depends_on macos: ">= :catalina"

  app "Keysmith.app"

  zap trash: [
    "~/Library/Caches/app.keysmith.Keysmith",
    "~/Library/Keysmith",
    "~/Library/Preferences/app.keysmith.Keysmith.plist",
  ]
end
