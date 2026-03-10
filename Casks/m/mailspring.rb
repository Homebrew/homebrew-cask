cask "mailspring" do
  arch arm: "-AppleSilicon"

  version "1.19.0"
  sha256 arm:   "d5f093a85e35fde452db2ef99988c3bfa457141cc04ed6c6ece495e4cf9f964c",
         intel: "63906df6fa99d1377ef6ddcd5f7a6b30770ca9c40d513917593aafa9aaf61226"

  url "https://github.com/Foundry376/Mailspring/releases/download/#{version}/Mailspring#{arch}.zip",
      verified: "github.com/Foundry376/Mailspring/"
  name "Mailspring"
  desc "Fork of Nylas Mail"
  homepage "https://getmailspring.com/"

  auto_updates true
  depends_on macos: ">= :monterey"

  app "Mailspring.app"

  zap trash: [
    "~/Library/Application Support/Mailspring",
    "~/Library/Caches/com.mailspring.*",
    "~/Library/Logs/Mailspring",
    "~/Library/Preferences/com.mailspring.*",
    "~/Library/Saved Application State/com.mailspring.*",
  ]
end
