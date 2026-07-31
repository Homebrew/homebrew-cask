cask "kogiqa" do
  version "0.5.1127"
  sha256 "9fa33905258bd5e0e0bda8f3381e827d6690963a1e3634cf875bce3c12d044ef"

  url "https://updater.kogiqa.com/release/kogi-qa-#{version}-universal.dmg"
  name "kogiQA"
  desc "UI automation tool using natural language descriptions"
  homepage "https://kogiQA.com/"

  livecheck do
    url "https://updater.kogiqa.com/release/latest-mac.yml"
    strategy :electron_builder
  end

  auto_updates true
  depends_on macos: :monterey

  app "kogiQA.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.atagon.kogi.app.sfl*",
    "~/Library/Application Support/kogiQA",
    "~/Library/Preferences/com.atagon.kogi.app.plist",
  ]
end
