cask "cryptomator" do
  arch arm: "-arm64", intel: "-x64"

  version "1.16.1"
  sha256 arm:   "702d9661c8f57c02ed54a253c01ee718269e3ed06e8b4bfef17aa89d193f631c",
         intel: "892d0c0b6d87091aea602955961d91c39aafb5fdb00dfcd5a0353dbdbcaf0c50"

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
