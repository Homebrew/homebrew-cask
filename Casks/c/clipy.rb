cask "clipy" do
  version "1.2.1"
  sha256 "dfbb66ce3135fbaa2d64eaeea99a63e63485e322c9746045a1098b1696a1ecd5"

  url "https://github.com/Clipy/Clipy/releases/download/#{version}/Clipy_#{version}.dmg",
      verified: "github.com/Clipy/Clipy/"
  name "Clipy"
  desc "Clipboard extension app"
  homepage "https://clipy-app.com/"

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

  caveats do
    requires_rosetta
  end
end
