cask "clipy" do
  version "1.3.0"
  sha256 "80e67266f220d4e63cccfc185a5f3f800eadafa123e25e5f9791351ad13cb593"

  url "https://github.com/Clipy/Clipy/releases/download/#{version}/Clipy_#{version}.dmg",
      verified: "github.com/Clipy/Clipy/"
  name "Clipy"
  desc "Clipboard extension app"
  homepage "https://clipy-app.com/"

  livecheck do
    url "https://clipy-app.com/appcast.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: :ventura

  app "Clipy.app"

  uninstall quit: "com.clipy-app.Clipy"

  zap trash: [
    "~/Library/Application Support/Clipy",
    "~/Library/Application Support/com.clipy-app.Clipy",
    "~/Library/Caches/com.clipy-app.Clipy",
    "~/Library/Caches/com.crashlytics.data/com.clipy-app.Clipy",
    "~/Library/Caches/io.fabric.sdk.mac.data/com.clipy-app.Clipy",
    "~/Library/Cookies/com.clipy-app.Clipy.binarycookies",
    "~/Library/Preferences/com.clipy-app.Clipy.plist",
  ]
end
