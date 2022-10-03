cask "postman" do
  arch arm: "osx_arm64", intel: "osx64"

  version "10.0.1"
  sha256 arm:   "dd99ab2c79a5db5eaf40e7260db867f2f4c095b25cfc641e73b7c9e74df1d14e",
         intel: "1cc1d18c222d1b1a9125bc2837610c3b2e2c761a4040159076499eeb5eb6b9dd"

  url "https://dl.pstmn.io/download/version/#{version}/#{arch}",
      verified: "dl.pstmn.io/download/version/"
  name "Postman"
  desc "Collaboration platform for API development"
  homepage "https://www.postman.com/"

  livecheck do
    url "https://dl.pstmn.io/api/version/latest"
    strategy :page_match do |page|
      JSON.parse(page)["version"]
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
