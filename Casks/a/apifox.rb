cask "apifox" do
  arch arm: "-macOS-arm64"

  version "2.5.9"
  sha256 arm:   "a06980e7be6708c71ac36f2cda882214d27f8a796b593a52460a4ed58257d2b1",
         intel: "dde27afc8fd718694faf2cc5ad68c32fb75495d28c66047be505b3603661d17d"

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
