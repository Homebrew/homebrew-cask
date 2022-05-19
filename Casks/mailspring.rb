cask "mailspring" do
  version "1.10.3"
  sha256 "59f09175d6ffd8253a23201a5703f7d9d9bec6753692876163790c3c991e413a"

  url "https://github.com/Foundry376/Mailspring/releases/download/#{version}/Mailspring.zip",
      verified: "github.com/Foundry376/Mailspring/"
  name "Mailspring"
  desc "Fork of Nylas Mail"
  homepage "https://getmailspring.com/"

  auto_updates true

  app "Mailspring.app"

  zap trash: [
    "~/Library/Application Support/Mailspring",
    "~/Library/Caches/com.mailspring.*",
    "~/Library/Logs/Mailspring",
    "~/Library/Preferences/com.mailspring.*",
    "~/Library/Saved Application State/com.mailspring.*",
  ]
end
