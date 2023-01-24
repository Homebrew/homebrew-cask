cask "apifox" do
  arch arm: "-macOS-arm64"

  version "2.2.18"
  sha256 arm:   "efe742acc908dca53a32d2ad28c3e56802079968f863363035a06cb3af8624e1",
         intel: "6b2136280c995aacae032cc0d009f9b0eb21c46270ea51875daa887608debc88"

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
