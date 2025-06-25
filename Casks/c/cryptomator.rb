cask "cryptomator" do
  arch arm: "-arm64", intel: "-x64"

  version "1.17.0"
  sha256 arm:   "03f45e203204e93b39925cbb04e19c9316da4f77debaba4fb5071f0ec8e727e8",
         intel: "69f93bafe0707a1210089205a99936da5431cca70fdc5fa290f2b02631270580"

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
