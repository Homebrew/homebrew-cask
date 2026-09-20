cask "mailspring" do
  arch arm: "-AppleSilicon"

  version "1.25.0"
  sha256 arm:   "cec7e47e237c8344e8dff365df961d5f0a213208b1ce267c435fb10906eaa216",
         intel: "c63fe03bda10b3a99aea4fda0755b64e1d51ba319f54456a03a747c61f899f33"

  url "https://github.com/Foundry376/Mailspring/releases/download/#{version}/Mailspring#{arch}.zip"
  name "Mailspring"
  desc "Fork of Nylas Mail"
  homepage "https://getmailspring.com/"

  auto_updates true
  depends_on macos: :ventura

  app "Mailspring.app"

  zap trash: [
    "~/Library/Application Support/Mailspring",
    "~/Library/Caches/com.mailspring.*",
    "~/Library/Logs/Mailspring",
    "~/Library/Preferences/com.mailspring.*",
    "~/Library/Saved Application State/com.mailspring.*",
  ]
end
