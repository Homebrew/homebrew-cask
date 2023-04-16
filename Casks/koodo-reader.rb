cask "koodo-reader" do
  arch arm: "-arm64", intel: "-x64"

  version "1.5.4"
  sha256 arm:   "a60c15ac51a97c8cfb3df177feb939ecc0f76706ef93283a8b447cf55532cddd",
         intel: "278f24c74f6e62db6fb8bff06578251a695cd265569bd0105cb3d38c2c1757ff"

  url "https://github.com/troyeguo/koodo-reader/releases/download/v#{version}/Koodo-Reader-#{version}#{arch}.dmg",
      verified: "github.com/troyeguo/koodo-reader/"
  name "Koodo Reader"
  desc "Open-source epub reader"
  homepage "https://koodo.960960.xyz/"

  app "Koodo Reader.app"

  zap trash: [
    "~/Library/Application Support/koodo-reader",
    "~/Library/Preferences/xyz.960960.koodo.plist",
    "~/Library/Saved Application State/xyz.960960.koodo.savedState",
  ]
end
