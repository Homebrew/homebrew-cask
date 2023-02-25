cask "apifox" do
  arch arm: "-macOS-arm64"

  version "2.2.24"
  sha256 arm:   "7508c8987c391e89c8b3f61e730aefd06057673317b75231d2b61c5b39b49bc8",
         intel: "9dd35d20b1f764f176b18d498879f3be2b6c4c6d442b026a4d7ed9a089a041b0"

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
