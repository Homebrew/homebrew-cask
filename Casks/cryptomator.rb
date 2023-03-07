cask "cryptomator" do
  arch arm: "-arm64", intel: "-x64"

  version "1.7.1"
  sha256 arm:   "cc470444949eb103b31249044e1afe47e810b6cf5fe9a90f8d3e3ac82c1f00b1",
         intel: "cdfeb1a793b9b65f1993795cec6383757318337b4018e443e5b404a893914674"

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
