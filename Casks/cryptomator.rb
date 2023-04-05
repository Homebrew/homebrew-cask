cask "cryptomator" do
  arch arm: "-arm64", intel: "-x64"

  version "1.7.4"
  sha256 arm:   "249e5f9d290ef1877e217afee7e275d80d191ffaaf92302b6e0a80225913d8c0",
         intel: "a5601d2ec86b79cf129d794789feb4fffe4e369cea0337ef1bd328e9ca3f140f"

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
