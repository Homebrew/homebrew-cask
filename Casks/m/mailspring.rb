cask "mailspring" do
  arch arm: "-AppleSilicon"

  version "1.18.0"
  sha256 arm:   "6c205079b3ab932be5cc72fbd11ccdc15b74cc9a5ec78a4c3600dcec542e5005",
         intel: "d5ef7b19972e3e2b260de2ec6847a4d1b1bab38e94abab31578ba2bf0a351830"

  url "https://github.com/Foundry376/Mailspring/releases/download/#{version}/Mailspring#{arch}.zip",
      verified: "github.com/Foundry376/Mailspring/"
  name "Mailspring"
  desc "Fork of Nylas Mail"
  homepage "https://getmailspring.com/"

  auto_updates true
  depends_on macos: ">= :monterey"

  app "Mailspring.app"

  zap trash: [
    "~/Library/Application Support/Mailspring",
    "~/Library/Caches/com.mailspring.*",
    "~/Library/Logs/Mailspring",
    "~/Library/Preferences/com.mailspring.*",
    "~/Library/Saved Application State/com.mailspring.*",
  ]
end
