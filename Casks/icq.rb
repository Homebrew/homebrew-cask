cask "icq" do
  version "3.0.30362"
  sha256 "81edefd45a2f60d9fefdd7d653184f58c12ca10c932b4c7c6d0671764515c215"

  url "https://icq-www.hb.bizmrg.com/mac/x64/#{version}/icq.dmg",
      verified: "icq-www.hb.bizmrg.com/"
  appcast "https://icq-www.hb.bizmrg.com/mac/x64/#{version}/version.xml"
  name "ICQ"
  desc "Messenger application"
  homepage "https://icq.com/desktop"

  auto_updates true

  app "ICQ.app"

  zap trash: [
    "~/Library/Application Support/ICQ",
    "~/Library/Caches/com.icq.macicq",
    "~/Library/Preferences/com.icq.macicq.plist",
    "~/Library/Saved Application State/com.icq.macicq.savedState",
  ]
end
