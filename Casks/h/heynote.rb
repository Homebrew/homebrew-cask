cask "heynote" do
  arch arm: "arm64", intel: "x64"

  version "2.1.1"
  sha256 arm:   "bebb58a6b4d6b7c3624d7426d4a6774926565443b4eaf6c0feb1afa04e181fd5",
         intel: "1561447099150804379f7d598913be5afe5a239fec19fcc29f6c20027f2e4984"

  url "https://github.com/heyman/heynote/releases/download/v#{version}/Heynote_#{version}_#{arch}.dmg",
      verified: "github.com/heyman/heynote/"
  name "Heynote"
  desc "Dedicated scratchpad for developers"
  homepage "https://heynote.com/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: ">= :catalina"

  app "Heynote.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.heynote.app.sfl*",
    "~/Library/Application Support/Heynote",
    "~/Library/Caches/com.heynote.app",
    "~/Library/Caches/com.heynote.app.ShipIt",
    "~/Library/Caches/heynote-updater",
    "~/Library/HTTPStorages/com.heynote.app",
    "~/Library/Logs/Heynote",
    "~/Library/Preferences/ByHost/com.heynote.app.ShipIt.*.plist",
    "~/Library/Preferences/com.heynote.app.plist",
    "~/Library/Saved Application State/com.heynote.app.savedState",
  ]
end
