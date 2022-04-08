cask "mailspring" do
  version "1.10.2"
  sha256 "97a13b1d7ca9b4a6e6ec99fd2e4225d37727ecb29fbf0b896ace6d757f61df15"

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
