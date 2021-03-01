cask "mailspring" do
  version "1.8.0"
  sha256 "3128301a258d9439b4075bd2ba34c8b10d3bc93eb4da82ba4054bcebef9d6da6"

  url "https://github.com/Foundry376/Mailspring/releases/download/#{version}/Mailspring.zip",
      verified: "github.com/Foundry376/Mailspring/"
  appcast "https://github.com/Foundry376/Mailspring/releases.atom"
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
