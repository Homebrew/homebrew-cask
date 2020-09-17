cask "clipy" do
  version "1.2.1"
  sha256 "dfbb66ce3135fbaa2d64eaeea99a63e63485e322c9746045a1098b1696a1ecd5"

  # github.com/Clipy/Clipy/ was verified as official when first introduced to the cask
  url "https://github.com/Clipy/Clipy/releases/download/#{version}/Clipy_#{version}.dmg"
  appcast "https://github.com/Clipy/Clipy/releases.atom"
  name "Clipy"
  desc "Clipboard extension app"
  homepage "https://clipy-app.com/"

  depends_on macos: ">= :yosemite"

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
