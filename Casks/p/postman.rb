cask "postman" do
  arch arm: "osx_arm64", intel: "osx64"

  version "12.12.1"
  sha256 arm:   "a77a64f476fb6cd9d52694741cee9cf7421629ea96482a9ebb929e64a1d17c78",
         intel: "e7b4bfc130275933b8d26318aa46238d019e8a3dfc59b37d1d4c5236aae4fc52"

  url "https://dl.pstmn.io/download/version/#{version}/#{arch}",
      verified: "dl.pstmn.io/download/version/"
  name "Postman"
  desc "Collaboration platform for API development"
  homepage "https://www.postman.com/"

  # This is a workaround to a slow-to-update livecheck. It uses the in-app
  # update check link and queries the available versions for a generic major
  # version. We cannot use #{version} as the URL does not exist if #{version}
  # is the latest version available.
  livecheck do
    url "https://dl.pstmn.io/update/status?currentVersion=#{version.major}.0.0&platform=#{arch}"
    strategy :json do |json|
      json["version"]
    end
  end

  auto_updates true
  depends_on macos: :big_sur

  app "Postman.app"

  zap trash: [
    "~/Library/Application Support/com.postmanlabs.mac.ShipIt",
    "~/Library/Application Support/Postman",
    "~/Library/Caches/com.postmanlabs.mac",
    "~/Library/Caches/com.postmanlabs.mac.ShipIt",
    "~/Library/Caches/Postman",
    "~/Library/HTTPStorages/com.postmanlabs.mac",
    "~/Library/Preferences/ByHost/com.postmanlabs.mac.ShipIt.*.plist",
    "~/Library/Preferences/com.postmanlabs.mac.plist",
    "~/Library/Saved Application State/com.postmanlabs.mac.savedState",
  ]
end
