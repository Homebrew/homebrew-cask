cask "mailspring" do
  arch arm: "-AppleSilicon"

  version "1.26.2"
  sha256 arm:   "4ca6a0d995e51583c2dc4c43bdccfb4a96ed61867f0e8e18486954ba55f83dce",
         intel: "f2f4d26fd6613b2cd1b1434ebd018cbc073557de5034ef07ce1336b55d7dc27e"

  url "https://github.com/Foundry376/Mailspring/releases/download/#{version}/Mailspring#{arch}.zip"
  name "Mailspring"
  desc "Fork of Nylas Mail"
  homepage "https://getmailspring.com/"

  auto_updates true
  depends_on macos: :ventura

  app "Mailspring.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.mailspring.mailspring.sfl*",
    "~/Library/Application Support/Mailspring",
    "~/Library/Caches/com.mailspring.*",
    "~/Library/HTTPStorages/com.mailspring.mailspring",
    "~/Library/Logs/Mailspring",
    "~/Library/Preferences/com.mailspring.*",
    "~/Library/Saved Application State/com.mailspring.*",
  ]
end
