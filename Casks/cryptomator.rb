cask "cryptomator" do
  arch arm: "-arm64", intel: "-x64"

  version "1.7.2"
  sha256 arm:   "ceba8a1644a14401b9412221980c51a60a791eb3d2a8eced17bdeabcf714bcc1",
         intel: "b502aba8a1f91464e38257234435e6f6f52dc8896bd9b11cfafb3b7ea53ec3f4"

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
