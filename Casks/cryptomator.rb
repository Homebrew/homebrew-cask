cask "cryptomator" do
  version "1.5.12"
  sha256 "b462b6c1bccbae76a886cf28e0d5c01482b3137a9300998a7a9f098ec607f563"

  url "https://dl.bintray.com/cryptomator/cryptomator/#{version}/Cryptomator-#{version}.dmg",
      verified: "dl.bintray.com/cryptomator/cryptomator/"
  appcast "https://github.com/cryptomator/cryptomator/releases.atom"
  name "Cryptomator"
  desc "Multi-platform client-side cloud file encryption tool"
  homepage "https://cryptomator.org/"

  depends_on macos: ">= :yosemite"

  app "Cryptomator.app"

  zap trash: [
    "~/Library/Application Support/Cryptomator",
    "~/Library/Logs/Cryptomator",
    "~/Library/Preferences/org.cryptomator.plist",
  ]
end
