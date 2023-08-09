cask "cryptomator" do
  arch arm: "-arm64", intel: "-x64"

  version "1.9.3"
  sha256 arm:   "73db86c16438477823efc0bb6e594fcd0254aa0e4b3fbe3cbf1a0f6f74b7a6cd",
         intel: "399bbbe914e66b745b839d19da6523c74310ac76cc22096b90f44deb85c2f644"

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
