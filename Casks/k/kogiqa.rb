cask "kogiqa" do
  version "0.5.1125"
  sha256 "f48924a7cdf2130cbe9914ad7b822959f44ff426d839d7e0e4b689171f60e403"

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
