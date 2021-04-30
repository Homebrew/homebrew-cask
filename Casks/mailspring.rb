cask "mailspring" do
  version "1.9.1"
  sha256 "04bd8a61d107642d68fe5bcfd1622624eee60cce3d6e0f60f08107569a96d813"

  url "https://github.com/Foundry376/Mailspring/releases/download/#{version}/Mailspring.zip",
      verified: "github.com/Foundry376/Mailspring/"
  name "Mailspring"
  desc "Fork of Nylas Mail"
  homepage "https://getmailspring.com/"

  auto_updates true

  app "Mailspring.app"

  zap trash: [
    "~/Library/Application Support/Mailspring",
    "~/Library/Preferences/com.mailspring.*",
    "~/Library/Caches/com.mailspring.*",
    "~/Library/Saved Application State/com.mailspring.*",
    "~/Library/Logs/Mailspring",
  ]
end
