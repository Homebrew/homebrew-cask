cask "apifox" do
  arch arm: "-macOS-arm64"

  version "2.3.12"
  sha256 arm:   "210a8002b13abd39367b248b6296d5635ed9ccd7fdcf236b359d67a4f35c0b00",
         intel: "1fddebb8e3a7fe0d6ad109d1c88e4738d370b3e18fef0be5cf7a79265a28e263"

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
