cask "koodo-reader" do
  arch arm: "-arm64", intel: "-x64"

  version "1.5.5"
  sha256 arm:   "f19c27c49b37cf1236491341c295063639c7ce51628235a30fcdf391f3b72f93",
         intel: "3e45542d990e2ac243321d361332339f2298d3e944194d9fcc3b0171714b68fa"

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
