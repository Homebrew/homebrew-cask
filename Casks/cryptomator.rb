cask "cryptomator" do
  version "1.5.14"
  sha256 "2c7edaa8beae6b0db06260910846b15a57f4950f68e5c4025513ead540809d4c"

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
