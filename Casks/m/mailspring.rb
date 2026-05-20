cask "mailspring" do
  arch arm: "-AppleSilicon"

  version "1.21.1"
  sha256 arm:   "53cca1ed0b31bb5026a8c555da9f4c9af3471fddb6c8112a580f0eb1095ea024",
         intel: "7fc7d44b39e183d452672745ad5e76bb72336b936dcb4ccb4c1b7f521a7b5ef3"

  url "https://github.com/Foundry376/Mailspring/releases/download/#{version}/Mailspring#{arch}.zip",
      verified: "github.com/Foundry376/Mailspring/"
  name "Mailspring"
  desc "Fork of Nylas Mail"
  homepage "https://getmailspring.com/"

  auto_updates true
  depends_on macos: :monterey

  app "Mailspring.app"

  zap trash: [
    "~/Library/Application Support/Mailspring",
    "~/Library/Caches/com.mailspring.*",
    "~/Library/Logs/Mailspring",
    "~/Library/Preferences/com.mailspring.*",
    "~/Library/Saved Application State/com.mailspring.*",
  ]
end
