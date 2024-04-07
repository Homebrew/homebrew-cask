cask "apifox" do
  arch arm: "-macOS-arm64"

  version "2.5.18"
  sha256 arm:   "b3a67aa16f7900aab30e55952d477ef6cf10c821a9fc9344356527880eb3aca7",
         intel: "f9e09e3ec983eed323a6efe475d5d86d45ffc62ef8813d39c235179f238d41b4"

  url "https://cdn.apifox.cn/download/#{version}/Apifox#{arch}-#{version}.dmg"
  name "Apifox"
  desc "Platform for API documentation, debugging, and testing"
  homepage "https://www.apifox.cn/"

  livecheck do
    url "https://api.apifox.cn/api/v1/configs/client-updates/#{version}/mac/latest-mac.yml?noCache=#{Time.new.to_i * 2}"
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
