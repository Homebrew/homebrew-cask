cask "kogiqa" do
  version "0.5.1149"
  sha256 "ab859c7223780995aeac4280c8f2eea2b0700744116171118615a8a328931d41"

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
