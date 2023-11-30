cask "apifox" do
  arch arm: "-macOS-arm64"

  version "2.4.1"
  sha256 arm:   "d9f07971be57f323d2e8c361696f32356b07bbedfd53faed673e8554c6a7f436",
         intel: "d6da66cc698981c3a91a45281302ba31ce0014ed91dfb18e6516813f7c6690e3"

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
