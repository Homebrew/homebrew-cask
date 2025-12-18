cask "browser-deputy" do
  version "1.10"
  sha256 :no_check

  url "https://anybox.ltd/browser-deputy/download/browserdeputy-latest.zip"
  name "Browser Deputy"
  desc "Command palette in any application"
  homepage "https://anybox.ltd/browser-deputy"

  livecheck do
    url "https://anybox.ltd/browser-deputy/download/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: ">= :ventura"

  app "Browser Deputy.app"

  zap trash: [
    "~/Library/Application Support/Browser Deputy",
    "~/Library/Caches/Browser Deputy",
    "~/Library/Caches/ltd.anybox.BrowserDeputy",
    "~/Library/HTTPStorages/ltd.anybox.BrowserDeputy",
    "~/Library/HTTPStorages/ltd.anybox.BrowserDeputy.binarycookies",
    "~/Library/Preferences/ltd.anybox.BrowserDeputy.plist",
    "~/Library/SyncedPreferences/com.apple.kvs/ChangeTokens/NoEncryption/Browser Deputy",
  ]
end
