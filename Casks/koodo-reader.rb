cask "koodo-reader" do
  arch arm: "-arm64", intel: "-x64"

  version "1.5.7"
  sha256 arm:   "65cea6dea3a3c393cfc9101b53d943ec842b2a9330b9aae578cfbc2488ce4fa8",
         intel: "9811be8575c01785dc3a3a3a32b87a6b735c6e6a5cdb9d54d33bf574195d7b68"

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
