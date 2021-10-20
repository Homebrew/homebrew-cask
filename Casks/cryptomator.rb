cask "cryptomator" do
  version "1.6.0"
  sha256 "75334656783bfcfe1c522d291b4671fd852615439523e5140aa3c48418d4c880"

  url "https://github.com/cryptomator/cryptomator/releases/download/#{version}/Cryptomator-#{version}.dmg",
      verified: "github.com/cryptomator/cryptomator/"
  name "Cryptomator"
  desc "Multi-platform client-side cloud file encryption tool"
  homepage "https://cryptomator.org/"

  livecheck do
    url "https://cryptomator.org/downloads/mac/thanks/"
    strategy :page_match
    regex(%r{href=.*?/Cryptomator-(\d+(?:\.\d+)*)\.dmg}i)
  end

  depends_on macos: ">= :high_sierra"

  app "Cryptomator.app"

  zap trash: [
    "~/Library/Application Support/Cryptomator",
    "~/Library/Logs/Cryptomator",
    "~/Library/Preferences/org.cryptomator.plist",
  ]
end
