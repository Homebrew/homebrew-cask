cask "apifox" do
  arch arm: "-macOS-arm64"

  version "2.5.3"
  sha256 arm:   "6c9fa910ceca41d9c0b7c97d2bd60f25819ec52ed5f2f0e52764c3ff8ddb3d9b",
         intel: "9436cd19f32a1605babf14c23222cd0c5a88418d76eddb21c724f55e2aba8bcc"

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
