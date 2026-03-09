cask "cryptomator" do
  arch arm: "-arm64", intel: "-x64"

  version "1.19.0"
  sha256 arm:   "f4cc20ba7b8befa8deed0f6fc495e39843228e8dbe48c7314e8fa0b06ad6a162",
         intel: "3ba6011fe50574ee356c0e0f1a869afdd48f3e8059a679175ae8cb87c965475d"

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
