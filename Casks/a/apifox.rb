cask "apifox" do
  arch arm: "-macOS-arm64"

  version "2.5.12"
  sha256 arm:   "e55d176078757f74be00af990f00e27a85d21f897dc03f6b9c47acfadffda4ec",
         intel: "e98b9871569b0bacc04902e2ea12972d29a97f0ffad7fa824b302f7015fed05d"

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
