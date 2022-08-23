cask "iconjar" do
  version "2.11.1,50401"
  sha256 "035127655ec165302a44784b196f45273e64550c7f3fc8f47bcd6fbb40f34997"

  url "https://geticonjar.com/releases/IconJar.app.#{version.csv.second}.zip"
  name "IconJar"
  desc "Icon organizer"
  homepage "https://geticonjar.com/"

  livecheck do
    url "https://geticonjar.com/releases/stable.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: ">= :mojave"

  app "IconJar.app"

  zap trash: [
    "/Users/Shared/IconJar",
    "~/Library/Application Support/IconJar",
    "~/Library/Preferences/com.iconjar.iconjar.plist",
  ]
end
