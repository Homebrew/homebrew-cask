cask "keysmith" do
  version "1.18.3,96"
  sha256 "87be5a446f0fc4259a4e28bcf6f948f6dc8e57ec220059d831d97fa69f5cbfe8"

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
