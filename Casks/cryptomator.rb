cask "cryptomator" do
  version "1.5.11"
  sha256 "3570ae02917c91fc0d2a0a2a42a41aa5b0dcf00ae91e481a6d9ded4ee24ebf6f"

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
