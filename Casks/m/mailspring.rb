cask "mailspring" do
  arch arm: "-AppleSilicon"

  version "1.23.0"
  sha256 arm:   "a9f641d9dfc9a5f0a3ecb87b3492ab416c0a8cbdfcd3ec424d7ae99e180886ea",
         intel: "7258d79f778d13468d1799a18ba37124d2de3f1aa149265959a6b15f5373ef0c"

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
