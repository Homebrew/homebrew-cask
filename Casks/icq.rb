cask "icq" do
  version "3.0.30469"
  sha256 "603e6ba7448055fbb338529ab4cd080fdad9ac3265f8edd23678ad67cc5cf83a"

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
