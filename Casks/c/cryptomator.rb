cask "cryptomator" do
  arch arm: "-arm64", intel: "-x64"

  version "1.9.4"
  sha256 arm:   "d5233f848ec0c1a930e8b5f7e7b82460f9be9b3c5ffc87c1839747ff3e538847",
         intel: "453dc1e240de35018cd2edb7fa44b55f6d24f0a1027959a7799db133428fa9f7"

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
