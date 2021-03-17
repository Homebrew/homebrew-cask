cask "icq" do
  version "3.0.31180"
  sha256 "b6859eae0ed1b016da4d42e401130a30713c0a72566c903af091cc9833b221e3"

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
