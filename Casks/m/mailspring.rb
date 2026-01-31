cask "mailspring" do
  arch arm: "-AppleSilicon"

  version "1.17.3"
  sha256 arm:   "121ad2a11742b6a691d6dcc073697e18f0d9bf900c63b326226120d9b36e48e2",
         intel: "92b5b1c474a8178e65bbe4abe313c14f49e5eb3b3a395fcd60aaed639fac447e"

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
