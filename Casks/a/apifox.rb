cask "apifox" do
  arch arm: "-macOS-arm64"

  version "2.3.11"
  sha256 arm:   "bc04e5a16199020312834fc47e0aed144def359ae4f3c5d56154d6fdf41a9a35",
         intel: "4f2da301294e5ff2a347bcdf9fd7cd239aeaf061d46ce49d836024a50ab3a58e"

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
