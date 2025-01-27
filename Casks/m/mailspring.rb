cask "mailspring" do
  arch arm: "-AppleSilicon"

  version "1.15.1"
  sha256 arm:   "30c276ea9dcaa7fac132dcae3850f2be6033e49d05730e6d8859cc88f677e2f0",
         intel: "a9cf0158ef2e35070b5f94fc8b6ac2ddf36cbae68465cf638cf56d9fd54658f6"

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
