cask "mailspring" do
  arch arm: "-AppleSilicon"

  version "1.22.0"
  sha256 arm:   "c1097dd6f520c4e245f0b08014ed24ee544b7990332463b512970d13d0cd8be3",
         intel: "3c0f8dbc2f7ec56fb2ace8ae95a60c1b64486c56300fd3606fa5fb436bbff736"

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
