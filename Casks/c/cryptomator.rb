cask "cryptomator" do
  arch arm: "-arm64", intel: "-x64"

  version "1.10.0"
  sha256 arm:   "3901db7a56c62340d853c5f9601db6543d07ddd03175e98653238d82f49e9543",
         intel: "86c59b5a8ac2088810b23f62f609715b1558b497934be61c64425347176db942"

  url "https://github.com/cryptomator/cryptomator/releases/download/#{version}/Cryptomator-#{version}#{arch}.dmg",
      verified: "github.com/cryptomator/cryptomator/"
  name "Cryptomator"
  desc "Multi-platform client-side cloud file encryption tool"
  homepage "https://cryptomator.org/"

  depends_on macos: ">= :high_sierra"

  app "Cryptomator.app"

  zap trash: [
    "~/Library/Application Support/Cryptomator",
    "~/Library/Logs/Cryptomator",
    "~/Library/Preferences/org.cryptomator.plist",
  ]
end
