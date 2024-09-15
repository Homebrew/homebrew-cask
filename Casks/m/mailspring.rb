cask "mailspring" do
  version "1.14.0"
  sha256 "1e7ffda30359062d0edf89cec8ac2e0fbf04727873715c2e6b7944d3f4dc5df9"

  url "https://github.com/Foundry376/Mailspring/releases/download/#{version}/Mailspring.zip",
      verified: "github.com/Foundry376/Mailspring/"
  name "Mailspring"
  desc "Fork of Nylas Mail"
  homepage "https://getmailspring.com/"

  auto_updates true
  depends_on macos: ">= :high_sierra"

  app "Mailspring.app"

  zap trash: [
    "~/Library/Application Support/Mailspring",
    "~/Library/Caches/com.mailspring.*",
    "~/Library/Logs/Mailspring",
    "~/Library/Preferences/com.mailspring.*",
    "~/Library/Saved Application State/com.mailspring.*",
  ]
end
