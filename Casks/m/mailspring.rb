cask "mailspring" do
  arch arm: "-AppleSilicon"

  version "1.19.0"
  sha256 arm:   "c46eafefcb053a3b878dd62efc62a174534ba5e61fe3c4b7063a74f59231b3e3",
         intel: "7d3375daf03a4f53813fabb0be9aeecd399739a06d552c501e36ee2255048eeb"

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
