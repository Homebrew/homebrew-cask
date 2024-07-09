cask "apifox" do
  arch arm: "-macOS-arm64"

  version "2.6.2"
  sha256 arm:   "ff755a3d878d1c2ade39a6cf138c7c4643a61577541e0f409a5f60abff6b17bd",
         intel: "c97f742958833416c3f3d302e500cfeece489a5c251454d5856c3617fc492bf9"

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
