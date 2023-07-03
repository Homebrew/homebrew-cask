cask "cryptomator" do
  arch arm: "-arm64", intel: "-x64"

  version "1.9.1"
  sha256 arm:   "aa3908ec156ba4ede7d2c9239d81a2b21fcfee60389872df1a68b3edb24175f7",
         intel: "09754948a2837ea4546a6753a3b6556937fbeb557a621f23d2646e9e08976400"

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
