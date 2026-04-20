cask "mailspring" do
  arch arm: "-AppleSilicon"

  version "1.20.1"
  sha256 arm:   "7f7999a329a627d5522185ed38f93f9f73c4a2dfb1673bb857a96e68a87ab7df",
         intel: "42d0842acfe4bc04dd723b83d2a8501c70861ac97c21647bac1ff0c6f7238139"

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
