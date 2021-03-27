cask "keysmith" do
  version "1.16.1,88"
  sha256 "23643b4e9323d4844edb80d6748f2c4b0b250896bd7457dc3225bd328d8c3185"

  url "https://keysmith.app/versions/Keysmith-#{version.before_comma}.dmg"
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
