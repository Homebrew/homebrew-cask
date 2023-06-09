cask "apifox" do
  arch arm: "-macOS-arm64"

  version "2.2.43"
  sha256 arm:   "a47b90d2efd0529e7c4f0e16fc2d14c68476f58466ccd806255222b2b888a566",
         intel: "9c200b3d07845a235f95b8c70de8ec8a836e9b1b060e48dcdf6accae244d4eaf"

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
