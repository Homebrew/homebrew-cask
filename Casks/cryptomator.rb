cask "cryptomator" do
  arch arm: "-arm64", intel: "-x64"

  version "1.7.5"
  sha256 arm:   "ec27f86d8550d95f904602285746b7715f76c40d832af2884610541318ec60f6",
         intel: "6d8c90dcc02c9816e44dc277ca7198801e195b121a0c8a880bc8e980c081963b"

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
