cask "iconjar" do
  version "2.11.0,50398"
  sha256 "a80c86c7f85db98e30af6c00d51c9ce0517dd07238d88d1aff5be0ca3f70ae2b"

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
