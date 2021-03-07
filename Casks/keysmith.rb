cask "keysmith" do
  version "1.14.0,83"
  sha256 "b9c8b8e39d6a2fbb9527c44ed85e247175548cdab5803a33ee4b878baae5eb3f"

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
