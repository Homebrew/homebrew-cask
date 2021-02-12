cask "keysmith" do
  version "1.10.1,79"
  sha256 "d54e3725dfb4b0053c6a536416683593c244e2af5fb1a65646b42d1243b8e3f6"

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
