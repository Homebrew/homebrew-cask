cask "snowhush" do
  version "0.13.2"
  sha256 "16997ef7a95c1add46b82164c882662272f47562f7ecbc10d9d2e2f287aacdb0"

  url "https://github.com/mbezruchko/Snowhush/releases/download/v#{version}/Snowhush.dmg"
  name "Snowhush"
  desc "Animated weather effects on the desktop"
  homepage "https://github.com/mbezruchko/Snowhush"

  auto_updates true
  depends_on macos: :sonoma

  app "Snowhush.app"

  uninstall quit: "com.mbezruchko.Snowhush"

  zap trash: [
    "~/Library/Caches/com.mbezruchko.Snowhush",
    "~/Library/HTTPStorages/com.mbezruchko.Snowhush",
    "~/Library/HTTPStorages/com.mbezruchko.Snowhush.binarycookies",
    "~/Library/Preferences/com.mbezruchko.Snowhush.plist",
    "~/Library/WebKit/com.mbezruchko.Snowhush",
  ]
end
