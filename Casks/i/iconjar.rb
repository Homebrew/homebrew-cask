cask "iconjar" do
  version "2.11.3,50581"
  sha256 "defb2ae610c798c15dce7c25835a555c0a1bb1a4fe059ad7b106051f3e7589c8"

  url "https://geticonjar.com/releases/IconJar.app.#{version.csv.second}.zip"
  name "IconJar"
  desc "Icon organiser"
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
