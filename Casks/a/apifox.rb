cask "apifox" do
  arch arm: "-macOS-arm64"

  version "2.5.34"
  sha256 arm:   "0bf76ac099d5e6eece953b71ccbbc577297ae31aa8eb8c0880468d643f7941a8",
         intel: "f128a9de3279c3f8fb416f7d1460e9460a90ff7b890a1fe3969da56d85b88d98"

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
