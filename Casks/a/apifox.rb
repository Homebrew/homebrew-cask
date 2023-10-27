cask "apifox" do
  arch arm: "-macOS-arm64"

  version "2.3.23"
  sha256 arm:   "66076ae4ba5dbfe37480fe500469421bdb31baf8d35f5b8cc27230e10076a6fe",
         intel: "ebf7a071d81ee9a840b58f381a8279e72a9f04a67a985973e9fed8be07088957"

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
