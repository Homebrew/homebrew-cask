cask "mark-text" do
  arch arm: "arm64", intel: "x64"

  version "0.17.1"
  sha256 arm:   "c7fb2f9917b0626999d4fef9a1827ccc515afb1c32f7453977af5c1cbcd9de4f",
         intel: "83320faad3b217079f6638b1f4169ffc37465f255a93e262d1646f2a5f53f263"

  url "https://github.com/marktext/marktext/releases/download/v#{version}/marktext-#{arch}.dmg"
  name "MarkText"
  desc "Markdown editor"
  homepage "https://github.com/marktext/marktext"

  disable! date: "2026-09-01", because: :unsigned

  auto_updates true

  app "MarkText.app"

  zap trash: [
    "~/Library/Application Support/marktext",
    "~/Library/Logs/marktext",
    "~/Library/Preferences/com.github.marktext.marktext.plist",
    "~/Library/Saved Application State/com.github.marktext.marktext.savedState",
  ]
end
