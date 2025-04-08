cask "cryptomator" do
  arch arm: "-arm64", intel: "-x64"

  version "1.15.2"
  sha256 arm:   "21c4586179482e09a681d75b681b324698272ac5b961d641e7c105d2afd40db8",
         intel: "36cfd2cd906071940e6684af596d8f4ab70a2faa6bd7459f184f99296538558b"

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
