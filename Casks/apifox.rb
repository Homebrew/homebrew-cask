cask "apifox" do
  arch arm: "-macOS-arm64"

  version "2.1.37"
  sha256 arm:   "9ec05b21288836d2821bdac898407d0a52473de81a5868e5fab79a10e503832d",
         intel: "b2aa4f8c0c55737b8240650fe8a09397c4698793765ea22851d27415cb138281"

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
