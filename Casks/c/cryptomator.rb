cask "cryptomator" do
  arch arm: "-arm64", intel: "-x64"

  version "1.19.1"
  sha256 arm:   "c208184d36b1570e00c2929b3b230679191235742385e883863135ee67e9c581",
         intel: "14e3273f02268c6abf9a9962dbf35a01f45f4dd75ea90973af3827fcf88b96cb"

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
