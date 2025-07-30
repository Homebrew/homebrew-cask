cask "heynote" do
  arch arm: "arm64", intel: "x64"

  version "2.4.0"
  sha256 arm:   "4cf12f35657b7744f16ba1a827f4215f5e38501ac0025fe21abbf32b7f692c44",
         intel: "acbba0648084a6cd4e652c47cba79b15b6d4f6fb5516fe5738ae8d7a58579fac"

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
