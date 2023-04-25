cask "cryptomator" do
  arch arm: "-arm64", intel: "-x64"

  version "1.8.0"
  sha256 arm:   "eb9f7061287e2273ea735204621e2c77b5def89ce1192aff154b391476f2155a",
         intel: "61581821e7798a5fed9cf3fe2210795aa450574fcc08e1e81ead55d00f7ea602"

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
