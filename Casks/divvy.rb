cask "divvy" do
  version "1.5.1,581"
  sha256 "2823c41a8d5e4f0e27760a87b1fdb8acf9b6a48eef4074421e6daa1119f89a53"

  url "https://mizage.com/downloads/Divvy_#{version.csv.first}.zip"
  name "Divvy"
  desc "Application window manager focusing on simplicity"
  homepage "https://mizage.com/divvy/"

  livecheck do
    url "https://mizage.com/updates/profiles/divvy.php"
    strategy :sparkle
  end

  app "Divvy.app"

  zap trash: [
    "~/Library/Preferences/com.mizage.direct.Divvy.plist",
    "~/Library/Preferences/com.mizage.Divvy.plist",
  ]
end
