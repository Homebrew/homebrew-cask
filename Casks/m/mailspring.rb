cask "mailspring" do
  arch arm: "-AppleSilicon"

  version "1.16.0"
  sha256 arm:   "8dbb14f294af84f14a16322bfb66471133a284a2a8a9089998a43a786b4020a9",
         intel: "e3e57723f3f7c9864d02effc49dcf3839f8cb9d710625c03f5ebf2ae0550d914"

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
