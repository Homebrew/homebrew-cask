cask "mark-text" do
  version "0.16.3"
  sha256 "7054e56a439d5d09dd4b0898e01e541e1afb22fc74556678bcb006d37c1e041d"

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
