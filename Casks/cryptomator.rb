cask "cryptomator" do
  arch arm:   "-arm64",
       intel: "-x64"

  version "1.6.15"
  sha256 arm:   "987e0d2320c8257a118b7fe20ce15aa462d2f1d8f121ed2439a0d5350ec4763c",
         intel: "b1b5153770386cbf3344cbe4256ea299ac5eabc12aa104ef36a47ce3797047af"

  url "https://github.com/cryptomator/cryptomator/releases/download/#{version}/Cryptomator-#{version}#{arch}.dmg",
      verified: "github.com/cryptomator/cryptomator/"
  name "Cryptomator"
  desc "Multi-platform client-side cloud file encryption tool"
  homepage "https://cryptomator.org/"

  livecheck do
    url "https://cryptomator.org/downloads/mac/thanks/"
    regex(%r{href=.*?/Cryptomator[._-]v?(\d+(?:\.\d+)+)-x64\.dmg}i)
  end

  depends_on macos: ">= :high_sierra"

  app "Cryptomator.app"

  zap trash: [
    "~/Library/Application Support/Cryptomator",
    "~/Library/Logs/Cryptomator",
    "~/Library/Preferences/org.cryptomator.plist",
  ]
end
