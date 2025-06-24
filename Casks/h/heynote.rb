cask "heynote" do
  arch arm: "arm64", intel: "x64"

  version "2.3.0"
  sha256 arm:   "3fef66e07ca503397208d6dbb5b770c87df3cfd49c18fbdfd98def3be8a23fd1",
         intel: "28f2e9f28582eb2f152af051136e331ba965c7333027892e9904e1382b802295"

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
