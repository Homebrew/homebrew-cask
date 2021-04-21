cask "icq" do
  version "3.0.31744"
  sha256 "caeccd99b962b0c6099bf99b669ab4bd3a729d8007d7c4e55d94204785264b06"

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
