cask "mailspring" do
  arch arm: "-AppleSilicon"

  version "1.17.2"
  sha256 arm:   "4e07e3d3b36354c56d67af40f93360565b2cca44acfe8565a910226bbdd944e4",
         intel: "9fa244d499f8c9b6bf8488d0e7ff7bf39006077a7c3c54f1c750cd1456caee68"

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
