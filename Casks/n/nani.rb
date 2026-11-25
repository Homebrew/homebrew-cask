cask "nani" do
  version "1.1.18"
  sha256 "e59237acd695ef1cb9774d3a0f6caa00037faca34e3e747d4ae1b4e2e03fced7"

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
