cask "cryptomator" do
  arch arm: "-arm64", intel: "-x64"

  version "1.15.1"
  sha256 arm:   "ecbd58228d3407d3f4c801c633006d4f9e836a758bc6db25d022830365ed3ed1",
         intel: "bf83c62e28c978706e8d2ffb89e5c1ef2d513355517c39650ee0dc2a1583d4b3"

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
