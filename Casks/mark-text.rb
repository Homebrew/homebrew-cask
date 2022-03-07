cask "mark-text" do
  version "0.17.0"
  sha256 "bed69ac813c1bcc82889bdae922eb027a29e2e8df4264b18d5492567bae6ce11"

  url "https://github.com/marktext/marktext/releases/download/v#{version}/marktext-x64.dmg",
      verified: "github.com/marktext/marktext/"
  name "MarkText"
  desc "Simple and elegant markdown editor"
  homepage "https://marktext.app/"

  app "MarkText.app"

  zap trash: [
    "~/Library/Application Support/marktext",
    "~/Library/Preferences/com.github.marktext.marktext.plist",
    "~/Library/Saved Application State/com.github.marktext.marktext.savedState",
    "~/Library/Logs/marktext",
  ]
end
