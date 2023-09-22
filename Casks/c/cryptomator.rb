cask "cryptomator" do
  arch arm: "-arm64", intel: "-x64"

  version "1.10.1"
  sha256 arm:   "11d246ef595b414c1910ac1ce6b1b10d76dba404f040c091da4d19a9f0f5427f",
         intel: "692154d881066c28b60db493940675a2e91859a2ab7e94487a86d405c0e86d35"

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
