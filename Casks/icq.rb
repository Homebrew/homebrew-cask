cask "icq" do
  version "3.0.30318"
  sha256 "ccaa180aa58f4b70fdf58d0e3d93fbe5aaa40a19445971110d3fcf45c1a3af7f"

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
