cask "icq" do
  version "3.0.28495"
  sha256 "58039a036bcdbf892de1db975a6c98a2beacccf0db7bd4aa15985356ba13d081"

  # icq-www.hb.bizmrg.com/ was verified as official when first introduced to the cask
  url "https://icq-www.hb.bizmrg.com/mac/x64/#{version}/icq.dmg"
  appcast "https://icq-www.hb.bizmrg.com/mac/x64/#{version}/version.xml"
  name "ICQ"
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
