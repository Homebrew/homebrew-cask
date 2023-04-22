cask "apifox" do
  arch arm: "-macOS-arm64"

  version "2.2.34"
  sha256 arm:   "3c158d95f53fced457314109e4cd9c60679d0ca6315930c47d1fbee798a4ce54",
         intel: "35f3933dce97ecf0c0b22ef319c8cf13fbe6bd9918f9bab0d18a9d987dae840f"

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
