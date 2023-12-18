cask "apifox" do
  arch arm: "-macOS-arm64"

  version "2.4.5"
  sha256 arm:   "c6bec8a0811b54cbd1fbfb9b4fa8fd77c0be4504a8c88a56f1d692a5db04a555",
         intel: "8f09453a1e2720b57dacf3acd2f8f15f72a432084ac3a392ef74934dd681c964"

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
