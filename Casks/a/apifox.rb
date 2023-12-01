cask "apifox" do
  arch arm: "-macOS-arm64"

  version "2.4.2"
  sha256 arm:   "5cc077669b35609462d5fac34e3cd4f96f7955796f87f7e9a466fe3fb065016d",
         intel: "c04ed99ccc02e369f85cb552f30c8d03a1db7f65180b09417945f2ba952f3485"

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
