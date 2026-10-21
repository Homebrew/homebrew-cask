cask "mailspring" do
  arch arm: "-AppleSilicon"

  version "1.26.1"
  sha256 arm:   "de4491669a6d13aab36428c21021335b1a3f0d8fa82e77a5540960f7a2dd0c1f",
         intel: "d9caf81db8c1daddece451ef33186cfea3f6bd2272b9079d17dd8613c517c07c"

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
