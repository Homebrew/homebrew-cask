cask "mailspring" do
  version "1.7.8"
  sha256 "33ad05420735de09ee2cbc9b57aa3d9acceb0d571c45ddfa09c8a38dbbf81dc9"

  # github.com/Foundry376/Mailspring/ was verified as official when first introduced to the cask
  url "https://github.com/Foundry376/Mailspring/releases/download/#{version}/Mailspring.zip"
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
