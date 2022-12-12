cask "cryptomator" do
  arch arm:   "-arm64",
       intel: "-x64"

  version "1.6.16"
  sha256 arm:   "df9ca971acf00b3e23d6e237419a6e2c2b1f75083e0d775243b8957cf46956a4",
         intel: "47bf47dd902647b5f93437bf2c1d445c24a94a30edbb6eccf1b4d3099b673d16"

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
