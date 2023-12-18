cask "cryptomator" do
  arch arm: "-arm64", intel: "-x64"

  version "1.11.1"
  sha256 arm:   "02a16b6abb6739fb8f006d9c8058eaf27ea24dc1565018555c1759402366947c",
         intel: "3f6cad34dffc2fa3e905511bc3eb2677988a3e17d18d9c6c90240fec30a40cf9"

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
