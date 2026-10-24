cask "kogiqa" do
  version "0.5.1230"
  sha256 "1ce8a46cf1e8574b7d9c385f274806d4e57e019bf7a0af4135664660b4eafbfc"

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
