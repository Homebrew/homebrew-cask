cask "icq" do
  version "3.0.32393"
  sha256 "3d645a9badd7524f3f9a23187a40079098427907d75f2c1ecaa676ff5369d2ec"

  url "https://icq-www.hb.bizmrg.com/mac/x64/#{version}/icq.dmg",
      verified: "icq-www.hb.bizmrg.com/"
  name "ICQ"
  desc "Messenger application"
  homepage "https://icq.com/desktop"

  livecheck do
    url "https://icq-www.hb.bizmrg.com/mac/x64/#{version}/version.xml"
    strategy :sparkle
  end

  auto_updates true

  app "ICQ.app"

  zap trash: [
    "~/Library/Application Support/ICQ",
    "~/Library/Caches/com.icq.macicq",
    "~/Library/Preferences/com.icq.macicq.plist",
    "~/Library/Saved Application State/com.icq.macicq.savedState",
  ]
end
