cask "mailspring" do
  arch arm: "-AppleSilicon"

  version "1.15.0"
  sha256 arm:   "705ceaa81036e529a3f65fa7bda6621cf02718a0044346fbe64b34b9674a089d",
         intel: "ec9a1e11436c93281da03ccc6f7877ac364a269b45d6e0c2dc7a3a55b42318e7"

  url "https://github.com/Foundry376/Mailspring/releases/download/#{version}/Mailspring#{arch}.zip",
      verified: "github.com/Foundry376/Mailspring/"
  name "Mailspring"
  desc "Fork of Nylas Mail"
  homepage "https://getmailspring.com/"

  auto_updates true
  depends_on macos: ">= :big_sur"

  app "Mailspring.app"

  zap trash: [
    "~/Library/Application Support/Mailspring",
    "~/Library/Caches/com.mailspring.*",
    "~/Library/Logs/Mailspring",
    "~/Library/Preferences/com.mailspring.*",
    "~/Library/Saved Application State/com.mailspring.*",
  ]
end
