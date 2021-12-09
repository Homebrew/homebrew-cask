cask "cryptomator" do
  version "1.6.4"
  
  if Hardware::CPU.intel?
    sha256 "7c763610523dc6ced2d51d5e25fdb15ccd93366a107b8959460f7796eef83dc2"
    url "https://github.com/cryptomator/cryptomator/releases/download/#{version}/Cryptomator-#{version}.dmg",
      verified: "github.com/cryptomator/cryptomator/"
  else
    sha256 "1e7fc2bb09bbe914317c9b1459415a250d8f7baaa4cb51735c2f1a1e8d4605da"
    url "https://github.com/cryptomator/cryptomator/releases/download/#{version}/Cryptomator-#{version}-arm64.dmg",
      verified: "github.com/cryptomator/cryptomator/"
  end  
    
  name "Cryptomator"
  desc "Multi-platform client-side cloud file encryption tool"
  homepage "https://cryptomator.org/"

  livecheck do
    url "https://cryptomator.org/downloads/mac/thanks/"
    strategy :page_match
    regex(%r{href=.*?/Cryptomator-(\d+(?:\.\d+)+)\.dmg}i)
  end

  depends_on macos: ">= :high_sierra"

  app "Cryptomator.app"

  zap trash: [
    "~/Library/Application Support/Cryptomator",
    "~/Library/Logs/Cryptomator",
    "~/Library/Preferences/org.cryptomator.plist",
  ]
end
