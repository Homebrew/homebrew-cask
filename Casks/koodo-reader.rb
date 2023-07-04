cask "koodo-reader" do
  arch arm: "-arm64", intel: "-x64"

  version "1.5.6"
  sha256 arm:   "53000472714b3bf85bc7699f098b73eaf601e9c18d71b87957427cd3e8c7d715",
         intel: "c90489f0c8e43dc4e07b4324e6020f309e0af043f3ae7a26b4c74f10026fd1b8"

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
