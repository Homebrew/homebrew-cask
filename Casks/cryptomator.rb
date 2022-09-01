cask "cryptomator" do
  arch arm: "-arm64"

  version "1.6.14"
  sha256 arm:   "1fb192743bb837ffb17c52bcdb33d23107013187dea525cd12aca66b20bd8976",
         intel: "fccd615b398fe6f926a6b5824dd349f26a016163712e49ab0fca0e473dee73fe"

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
