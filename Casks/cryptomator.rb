cask "cryptomator" do
  version "1.5.13"
  sha256 "789a7e92d63997be03122efdab5e07de6c617fcd0fb36fb6c5807e3a6b119be0"

  url "https://dl.bintray.com/cryptomator/cryptomator/#{version}/Cryptomator-#{version}.dmg",
      verified: "dl.bintray.com/cryptomator/cryptomator/"
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
