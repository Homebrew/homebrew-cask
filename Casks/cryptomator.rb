cask "cryptomator" do
  arch arm:   "-arm64",
       intel: "-x64"

  version "1.6.17"
  sha256 arm:   "9b98791303bc310cbbc78b69dc4cffa1b3d72a860ccf84bf2d7d396d391d4cce",
         intel: "9ca0e230650b75b7ae424ffad8aaf98ef131facf1ca524b709f497c768e0727d"

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
