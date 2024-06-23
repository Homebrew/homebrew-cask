cask "icq" do
  version "23.2.0,37179"
  sha256 :no_check

  url "https://hb.bizmrg.com/icq-www/mac/x64/icq.dmg",
      verified: "hb.bizmrg.com/icq-www/mac/x64/"
  name "ICQ"
  desc "Messenger application"
  homepage "https://icq.com/desktop"

  disable! date: "2024-06-26", because: :no_longer_available

  auto_updates true
  depends_on macos: ">= :mojave"

  app "ICQ.app"

  zap trash: [
    "~/Library/Application Support/ICQ",
    "~/Library/Caches/com.icq.macicq",
    "~/Library/Preferences/com.icq.macicq.plist",
    "~/Library/Saved Application State/com.icq.macicq.savedState",
  ]
end
