cask "cryptomator" do
  version "1.5.7"
  sha256 "d743946388817e9913cb4ed96d54bc769b43addb53f3a64d5cf3c9436b20aca7"

  # dl.bintray.com/cryptomator/cryptomator/ was verified as official when first introduced to the cask
  url "https://dl.bintray.com/cryptomator/cryptomator/#{version}/Cryptomator-#{version}.dmg"
  appcast "https://github.com/cryptomator/cryptomator/releases.atom"
  name "Cryptomator"
  homepage "https://cryptomator.org/"

  depends_on macos: ">= :yosemite"

  app "Cryptomator.app"

  zap trash: [
    "~/Library/Application Support/Cryptomator",
    "~/Library/Logs/Cryptomator",
    "~/Library/Preferences/org.cryptomator.plist",
  ]
end
