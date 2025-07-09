cask "cryptomator" do
  arch arm: "-arm64", intel: "-x64"

  version "1.17.1"
  sha256 arm:   "34c75e5f744bcedb96cf900a7e73ae96a5b39568a2e0994a1239fc59b31bc0d5",
         intel: "0111ad60e0a9749a63f11eb4eae183aaf05ceb6dde67b8c28bcc8b2447b86850"

  url "https://github.com/cryptomator/cryptomator/releases/download/#{version}/Cryptomator-#{version}#{arch}.dmg",
      verified: "github.com/cryptomator/cryptomator/"
  name "Cryptomator"
  desc "Multi-platform client-side cloud file encryption tool"
  homepage "https://cryptomator.org/"

  livecheck do
    url "https://api.cryptomator.org/desktop/latest-version.json"
    strategy :json do |json|
      json["mac"]
    end
  end

  depends_on macos: ">= :big_sur"

  app "Cryptomator.app"

  zap trash: [
    "~/Library/Application Support/Cryptomator",
    "~/Library/Logs/Cryptomator",
    "~/Library/Preferences/org.cryptomator.plist",
  ]
end
