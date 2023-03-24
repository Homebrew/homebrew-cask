cask "cryptomator" do
  arch arm: "-arm64", intel: "-x64"

  version "1.7.3"
  sha256 arm:   "ad6485d9aea0eea70ae2dfae545591e6444e10ae59a4e8879e7ccabb9505dbfe",
         intel: "5db788e2192153282b1f9cfae6eefccdb81ed52c55320796f324e41d3eaab6fd"

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
