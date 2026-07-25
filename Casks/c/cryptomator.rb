cask "cryptomator" do
  arch arm: "-arm64", intel: "-x64"

  version "1.19.3"
  sha256 arm:   "0bfe8c6aeb97acf638810e3e576016db510bc7bf71366dc00f3c7eea9a314f23",
         intel: "371dc9c75ded3d74440b6d597360bff20553f3c01c2c3d9aaf3fc97b46037938"

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

  depends_on macos: :big_sur

  app "Cryptomator.app"

  zap trash: [
    "~/Library/Application Support/Cryptomator",
    "~/Library/Logs/Cryptomator",
    "~/Library/Preferences/org.cryptomator.plist",
  ]
end
