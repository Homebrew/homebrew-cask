cask "cryptomator" do
  arch arm: "-arm64"

  version "1.6.13"
  sha256 arm:   "00464909e421d08a33b333b21336931acbadf6fbd563575633d4c10b058aef12",
         intel: "7f20cc42e5f690606108f16efa61b8f63fd4abc49b20e2a7bcea80c1858c0e17"

  url "https://github.com/cryptomator/cryptomator/releases/download/#{version}/Cryptomator-#{version}#{arch}.dmg",
      verified: "github.com/cryptomator/cryptomator/"
  name "Cryptomator"
  desc "Multi-platform client-side cloud file encryption tool"
  homepage "https://cryptomator.org/"

  livecheck do
    url "https://cryptomator.org/downloads/mac/thanks/"
    regex(%r{href=.*?/Cryptomator[._-]v?(\d+(?:\.\d+)+)\.dmg}i)
  end

  depends_on macos: ">= :high_sierra"

  app "Cryptomator.app"

  zap trash: [
    "~/Library/Application Support/Cryptomator",
    "~/Library/Logs/Cryptomator",
    "~/Library/Preferences/org.cryptomator.plist",
  ]
end
