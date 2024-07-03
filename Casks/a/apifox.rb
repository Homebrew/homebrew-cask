cask "apifox" do
  arch arm: "-macOS-arm64"

  version "2.6.0"
  sha256 arm:   "5d630f36469765b5ebe373864f5808464bc9fc9dd930b340ce42182e0b948dc2",
         intel: "af95b518c890382403b35fba6b6bc1a41561c343b8d3944f3e58d994deaf08ac"

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
