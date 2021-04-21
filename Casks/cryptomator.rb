cask "cryptomator" do
  version "1.5.15"
  sha256 "f7a1d37424ad125e2bda525cb0c2771df9133e0c941eb190ef7fa3f7d1450ce6"

  url "https://github.com/cryptomator/cryptomator/releases/download/#{version}/Cryptomator-#{version}.dmg",
      verified: "github.com/cryptomator/cryptomator/"
  name "Cryptomator"
  desc "Multi-platform client-side cloud file encryption tool"
  homepage "https://cryptomator.org/"

  livecheck do
    url "https://github.com/cryptomator/cryptomator"
    strategy :git
  end

  depends_on macos: ">= :yosemite"

  app "Cryptomator.app"

  zap trash: [
    "~/Library/Application Support/Cryptomator",
    "~/Library/Logs/Cryptomator",
    "~/Library/Preferences/org.cryptomator.plist",
  ]
end
