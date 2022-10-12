cask "apifox" do
  arch arm: "-macOS-arm64"

  version "2.1.41"
  sha256 arm:   "986c7f5ff354cc2ea2af0e46d96437775beb611657e5bc3b724f3237afdf176d",
         intel: "dfccf65b168dede9c5cac3436a8bf6f99e653dba0297c0b80314021aef37faf7"

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
