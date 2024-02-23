cask "apifox" do
  arch arm: "-macOS-arm64"

  version "2.5.7"
  sha256 arm:   "53dc2f7e229ce019289d6345c5b3e0eeadad2c1804b2377579703094ecec18ac",
         intel: "f535cfca64df2a26229a3fe86ab766cb5ccad79a5e65f1a3a9275dd126535460"

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
