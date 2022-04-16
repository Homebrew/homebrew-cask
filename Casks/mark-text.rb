cask "mark-text" do
  version "0.17.1"
  sha256 "83320faad3b217079f6638b1f4169ffc37465f255a93e262d1646f2a5f53f263"

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
