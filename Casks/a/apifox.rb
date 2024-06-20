cask "apifox" do
  arch arm: "-macOS-arm64"

  version "2.5.33"
  sha256 arm:   "0acefc4a32793d597c2824f1aae459e3fadaeef11c22280375f69e6fa4046f77",
         intel: "332fe1efd0e63d9218980ff530a832c71550232d889814b93f702922206c8dc8"

  url "https://file-assets.apifox.com/download/#{version}/Apifox#{arch}-#{version}.dmg"
  name "Apifox"
  desc "Platform for API documentation, debugging, and testing"
  homepage "https://www.apifox.com/"

  livecheck do
    url "https://api.apifox.com/api/v1/configs/client-updates/#{version}/mac/latest-mac.yml?noCache=#{Time.new.to_i * 2}"
    strategy :electron_builder
  end

  auto_updates true

  app "Apifox.app"

  zap trash: [
    "~/Library/Application Support/apifox",
    "~/Library/Preferences/cn.apifox.app.plist",
    "~/Library/Saved Application State/cn.apifox.app.savedState",
  ]
end
