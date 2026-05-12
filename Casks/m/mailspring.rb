cask "mailspring" do
  arch arm: "-AppleSilicon"

  version "1.21.0"
  sha256 arm:   "3f854ffc41d029bf16161661259c9a689d4a2e93e5d1f670073a336729e7eb6c",
         intel: "d96b2cfaca8df20d895985d70e0f62da6413175bdde3241c6691a1da817c6f81"

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
