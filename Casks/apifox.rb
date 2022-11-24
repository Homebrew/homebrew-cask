cask "apifox" do
  arch arm: "-macOS-arm64"

  version "2.2.10"
  sha256 arm:   "46a84ea71cb8287b0960b923611f702c835663d0a0a45f683a4c664d4bfa67b5",
         intel: "c04f0341eef28d527b13be11351eabca1db41974580e8cf35a2fb4b6338f86c0"

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
