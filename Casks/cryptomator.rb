cask "cryptomator" do
  arch arm: "-arm64", intel: "-x64"

  version "1.7.0"
  sha256 arm:   "c1e6620f64ed2605b8747c07aecca6928fca71485c351f9be30b3fc4b816dd36",
         intel: "efc74c80a8623d7489e3a80807b17e3cfa3d918709a7b3432e621ef654276136"

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
