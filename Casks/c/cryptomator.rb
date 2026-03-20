cask "cryptomator" do
  arch arm: "-arm64", intel: "-x64"

  version "1.19.2"
  sha256 arm:   "e978a2da545d8aaca1192faf6dadf4c51bdf5e9bdc232a227618401c0b833f9a",
         intel: "6f9ba5aa6deb5ef095926e6dcd7e6935d40791ff213dbbad14cd0ab375983a16"

  url "https://github.com/cryptomator/cryptomator/releases/download/#{version}/Cryptomator-#{version}#{arch}.dmg",
      verified: "github.com/cryptomator/cryptomator/"
  name "Cryptomator"
  desc "Multi-platform client-side cloud file encryption tool"
  homepage "https://cryptomator.org/"

  livecheck do
    url "https://api.cryptomator.org/desktop/latest-version.json"
    strategy :json do |json|
      json["mac"]
    end
  end

  depends_on macos: ">= :big_sur"

  app "Cryptomator.app"

  zap trash: [
    "~/Library/Application Support/Cryptomator",
    "~/Library/Logs/Cryptomator",
    "~/Library/Preferences/org.cryptomator.plist",
  ]
end
