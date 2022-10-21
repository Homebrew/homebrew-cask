cask "apifox" do
  arch arm: "-macOS-arm64"

  version "2.2.2"
  sha256 arm:   "d0065345b589319971f6fb61134783bc3c14b87b697ef3c780fd8a6d3d16775d",
         intel: "978de059885bc327ef56e891798edcb44ebb441fc3b009acfb8d4d8efcdea2f2"

  url "https://cdn.apifox.cn/download/#{version}/Apifox#{arch}-#{version}.dmg"
  name "Apifox"
  desc "Platform for API documentation, debugging, Mock and testing"
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
