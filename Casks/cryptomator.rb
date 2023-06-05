cask "cryptomator" do
  arch arm: "-arm64", intel: "-x64"

  version "1.9.0"
  sha256 arm:   "025748f1b97306435d969443feb6bcb1d6515931fb15d831d5b9f05e3bb42723",
         intel: "9c5c6cf14a1aec09590fbe78d09312ef547407e10c638447896b994f4c658a1b"

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
