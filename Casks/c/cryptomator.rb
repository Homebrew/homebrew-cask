cask "cryptomator" do
  arch arm: "-arm64", intel: "-x64"

  version "1.18.0"
  sha256 arm:   "1416c189da2890a234452a23d6d566e7eba4d79babf18423edc656344c676d13",
         intel: "b8b28bf17ad03864dd0ce3f5894ae1384f3b10d6423f580fabda4ad11ab1b79a"

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
