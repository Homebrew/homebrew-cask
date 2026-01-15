cask "mailspring" do
  arch arm: "-AppleSilicon"

  version "1.17.0"
  sha256 arm:   "908f2119aad36ee7be41fa3011c0565e4b03b5f45e757a71838d0eae47ec6608",
         intel: "a5df6c7a0b823cc3be4e640d5a60cdad4a34fa85303d17e065f8886af53447e9"

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
