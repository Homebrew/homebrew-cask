cask "mark-text" do
  arch arm: "arm64", intel: "x64"

  version "0.17.1"
  sha256 arm:   "703e5411b80514c867b4e9ce26dde5c16c416158ef45c6479256b6818aea5acf",
         intel: "daba6e7358dc3488e29ffd786d5bf49ba41da66a53df91b11065d68c68846ee5"

  url "https://github.com/marktext/marktext/releases/download/v#{version}/marktext-#{arch}-mac.zip"
  name "MarkText"
  desc "Simple and elegant markdown editor"
  homepage "https://github.com/marktext/marktext"

  app "MarkText.app"

  zap trash: [
    "~/Library/Application Support/marktext",
    "~/Library/Preferences/com.github.marktext.marktext.plist",
    "~/Library/Saved Application State/com.github.marktext.marktext.savedState",
    "~/Library/Logs/marktext",
  ]

  caveats do
    "The apple silicon (arm) version of #{token} is not signed, and will
display an error stating it is damaged and can't be opened.
  end
end
