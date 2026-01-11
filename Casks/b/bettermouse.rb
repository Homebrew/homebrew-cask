cask "bettermouse" do
  version "1.6,8589"
  sha256 "d056eddc13e0bc09978858f9fdfcf37f4e57e28ea4c60d2a733cc6f270859dc1"

  url "https://better-mouse.com/wp-content/uploads/BetterMouse.#{version.csv.first}.#{version.csv.second}.zip"
  name "BetterMouse"
  desc "Utility improving 3rd party mouse performance and functionalities"
  homepage "https://better-mouse.com/"

  livecheck do
    url "https://better-mouse.com/wp-content/uploads/appcast.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: ">= :big_sur"

  app "BetterMouse.app"

  uninstall quit: bundle_id = "com.naotanhaocan.BetterMouse"

  zap trash: [
    "~/Library/Application Support/BetterMouse",
    "~/Library/Caches/#{bundle_id}",
    "~/Library/HTTPStorages/#{bundle_id}*",
    "~/Library/Preferences/#{bundle_id}.plist",
    "~/Library/Saved Application State/#{bundle_id}.savedState",
  ]
end
