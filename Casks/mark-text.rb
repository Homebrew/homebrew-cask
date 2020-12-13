cask "mark-text" do
  version "0.16.2"
  sha256 "9ad1aa0ea087aebf17858611f40f62e76b2825c6cb0b13608fa8e131a9cb4867"

  url "https://github.com/marktext/marktext/releases/download/v#{version}/marktext.dmg",
      verified: "github.com/marktext/marktext/"
  appcast "https://github.com/marktext/marktext/releases.atom"
  name "Mark Text"
  homepage "https://marktext.app/"

  app "Mark Text.app"

  zap trash: [
    "~/Library/Application Support/marktext",
    "~/Library/Preferences/com.github.marktext.marktext.plist",
    "~/Library/Saved Application State/com.github.marktext.marktext.savedState",
    "~/Library/Logs/Mark Text",
  ]
end
