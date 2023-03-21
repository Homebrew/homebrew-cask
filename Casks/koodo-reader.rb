cask "koodo-reader" do
  arch arm: "-arm64", intel: "-x64"

  version "1.5.3"
  sha256 arm:   "8f85f14aaad305d4bd506c23e1664c4e1bd66fdb9144935945244d86ff1eaa49",
         intel: "c0e944d2ec3bdad5d90b5f88218b48f536cd1ae791e2395c29a781d7335b3130"

  url "https://github.com/troyeguo/koodo-reader/releases/download/v#{version}/Koodo-Reader-#{version}#{arch}.dmg",
      verified: "github.com/troyeguo/koodo-reader/"
  name "Koodo Reader"
  desc "Open-source Epub reader with backup and restore support"
  homepage "https://koodo.960960.xyz/"

  app "Koodo Reader.app"

  zap trash: [
    "~/Library/Application Support/koodo-reader",
    "~/Library/Preferences/xyz.960960.koodo.plist",
    "~/Library/Saved Application State/xyz.960960.koodo.savedState",
  ]
end
