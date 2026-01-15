cask "mailspring" do
  arch arm: "-AppleSilicon"

  version "1.17.1"
  sha256 arm:   "e4361696e5077b894ae5003147923cc6faeecbe182ae95f91373b77d903b2ce2",
         intel: "06848ba9171244bb98efce297b733ffb7f4dda3432f71b533408f84c1eaff8d9"

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
