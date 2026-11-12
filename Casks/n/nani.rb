cask "nani" do
  version "1.1.17"
  sha256 "5721c440d1ce06b9e51015328568a557b4e02bed6ea5200413da98d408344317"

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
