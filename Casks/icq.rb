cask "icq" do
  version "3.0.28819"
  sha256 "cd9e207b2d1ceb0d9595191da362633a2fc2686f98e440bfa34c7069a265696e"

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
