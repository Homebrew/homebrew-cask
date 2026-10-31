cask "clipy" do
  version "1.4.1"
  sha256 "14c067482ab1eb4f207e5b22ca276ce3fb19968e02142238e4d8e197c594bce3"

  url "https://github.com/Clipy/Clipy/releases/download/#{version}/Clipy_#{version}.dmg"
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
