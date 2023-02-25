cask "postman" do
  arch arm: "osx_arm64", intel: "osx64"

  version "10.10.9"
  sha256 arm:   "aa5c1283ccf31f4299d7605caa725f53c8e853758d64687ad0aefda2082ef41f",
         intel: "42fc97b20a53bf95d5966c1ff1726573a2aa4a679f56e6177689924e1a9fd98d"

  url "https://dl.pstmn.io/download/version/#{version}/#{arch}",
      verified: "dl.pstmn.io/download/version/"
  name "Postman"
  desc "Collaboration platform for API development"
  homepage "https://www.postman.com/"

  livecheck do
    url "https://dl.pstmn.io/api/version/latest"
    strategy :json do |json|
      json["version"]
    end
  end

  auto_updates true

  app "Postman.app"

  zap trash: [
    "~/Library/Application Support/com.postmanlabs.mac.ShipIt",
    "~/Library/Application Support/Postman",
    "~/Library/Caches/com.postmanlabs.mac.ShipIt",
    "~/Library/Caches/com.postmanlabs.mac",
    "~/Library/Caches/Postman",
    "~/Library/Preferences/ByHost/com.postmanlabs.mac.ShipIt.*.plist",
    "~/Library/Preferences/com.postmanlabs.mac.plist",
    "~/Library/Saved Application State/com.postmanlabs.mac.savedState",
  ]
end
