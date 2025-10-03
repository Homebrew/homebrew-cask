cask "heynote" do
  arch arm: "arm64", intel: "x64"

  version "2.6.0"
  sha256 arm:   "b91e16a706853d2682440cc707b20fff70dc94a164a2936714b7c818ff67d3cf",
         intel: "a53bc877ae640f99bd48da6eb94da903bc2ec30460b5376a6a19d6850bcda242"

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
  depends_on macos: ">= :big_sur"

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
