cask "mailspring" do
  arch arm: "-AppleSilicon"

  version "1.14.0"
  sha256 arm:   "e5fd23b503f0c27905342b70d0a7f601a2db207a0eb5301cf7ecf4d34813b81a",
         intel: "712316db58ebdfa515ac67eb175baf85249f9efd3f6103f1d37d97e438cc834d"

  url "https://github.com/Foundry376/Mailspring/releases/download/#{version}/Mailspring#{arch}.zip",
      verified: "github.com/Foundry376/Mailspring/"
  name "Mailspring"
  desc "Fork of Nylas Mail"
  homepage "https://getmailspring.com/"

  auto_updates true
  depends_on macos: ">= :catalina"

  app "Mailspring.app"

  zap trash: [
    "~/Library/Application Support/Mailspring",
    "~/Library/Caches/com.mailspring.*",
    "~/Library/Logs/Mailspring",
    "~/Library/Preferences/com.mailspring.*",
    "~/Library/Saved Application State/com.mailspring.*",
  ]
end
