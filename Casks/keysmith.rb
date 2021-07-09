cask "keysmith" do
  version "1.16.3,90"
  sha256 "452731253918f40d555b9edf8ddc3fc32e447512da06344e183f9b15dc6f59e6"

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
