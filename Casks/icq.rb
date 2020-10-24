cask "icq" do
  version "3.0.29539"
  sha256 "29a11eda85145347655d7b3b778347d06c10619637c9cf309c567de4c83e842e"

  # icq-www.hb.bizmrg.com/ was verified as official when first introduced to the cask
  url "https://icq-www.hb.bizmrg.com/mac/x64/#{version}/icq.dmg"
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
