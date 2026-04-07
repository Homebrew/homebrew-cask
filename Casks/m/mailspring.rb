cask "mailspring" do
  arch arm: "-AppleSilicon"

  version "1.19.1"
  sha256 arm:   "7ec68e5dcdbb4e47276fbede0a5fe53ddd0feebdee69827bdfdffb183686617c",
         intel: "03b43062907f9a910dfbcd8fdef893b39df3301672ff126699871f4d0352a951"

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
