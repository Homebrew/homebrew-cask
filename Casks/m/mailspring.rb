cask "mailspring" do
  arch arm: "-AppleSilicon"

  version "1.20.0"
  sha256 arm:   "21ab69b437f44aaa22151020c8977ffa6f39a66dff6821f2411879c0e111d98a",
         intel: "0679ea31a6b0ccd088ca1dcc0a5bd1a0efc63f917fd6fda69725d6db6a1662f7"

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
