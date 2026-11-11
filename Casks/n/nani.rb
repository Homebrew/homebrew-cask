cask "nani" do
  version "1.1.16"
  sha256 "4e12125578f3b3de14df54e8859e024794ce3cb131f256f640e7cc611598c8b7"

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
