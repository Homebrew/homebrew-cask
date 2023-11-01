cask "apifox" do
  arch arm: "-macOS-arm64"

  version "2.3.24"
  sha256 arm:   "84c87a7e4deec9e6aefc8d854b29b1cb9986693830385dc66d1d115586df6237",
         intel: "5baffd2a90906ffc90e4e7847a0bd2ff248db48f12638bfd50edd3016ae83b72"

  url "https://cdn.apifox.cn/download/#{version}/Apifox#{arch}-#{version}.dmg"
  name "Apifox"
  desc "Platform for API documentation, debugging, and testing"
  homepage "https://www.apifox.cn/"

  livecheck do
    url "https://cdn.apifox.cn/download/mac/latest-mac.yml?noCache=#{Time.new.to_i * 2}"
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
