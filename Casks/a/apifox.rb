cask "apifox" do
  arch arm: "-macOS-arm64"

  version "2.3.18"
  sha256 arm:   "6571a2d20932e4e6a026fea34b6f485f51572310d2b5bcd221d38e623d5546ae",
         intel: "39a1b7da7950b6e9c015f5bb3f55d472f0a876427a6c4afadaf142a855f4d153"

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
