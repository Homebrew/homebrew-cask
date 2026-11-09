cask "nani" do
  version "1.1.15"
  sha256 "b3cf3501b5ba2509c5f89c9ce93aaf891f7a2524267f49664cdc71ebd02d4502"

  url "https://nani-desktop.kiok.jp/artifacts/nani-#{version}.dmg"
  name "Nani Translate"
  desc "AI-powered translator"
  homepage "https://nani.now/"

  livecheck do
    url "https://nani-desktop.kiok.jp/artifacts/latest-mac.yml"
    strategy :electron_builder
  end

  auto_updates true
  depends_on macos: :monterey

  app "Nani.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/jp.kiok.nani.sfl*",
    "~/Library/Application Support/Nani",
    "~/Library/Preferences/jp.kiok.nani.plist",
  ]
end
