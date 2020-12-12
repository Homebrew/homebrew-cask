cask "jaxx-liberty" do
  version "2.4.6"
  sha256 "da93cbc60c72710d4b4cb34897751ca481a0fdbd72c06955a94e364b894c3085"

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
