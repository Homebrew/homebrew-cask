cask "jaxx-liberty" do
  version "2.5.0"
  sha256 "1100cf1d0b9da5333b2e1a46e46b3ee3fbce35287e1cfc1fc8d78f68d861110a"

  url "https://download-liberty.jaxx.io/Jaxx.Liberty-#{version}.dmg"
  appcast "https://download-liberty.jaxx.io/latest-mac.yml"
  name "Jaxx Blockchain Wallet"
  homepage "https://jaxx.io/"

  app "Jaxx Liberty.app"

  zap trash: [
    "~/Library/Application Support/jaxx",
    "~/Library/Logs/jaxx",
  ]
end
