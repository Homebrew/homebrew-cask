cask "apifox" do
  arch arm: "-macOS-arm64"

  version "2.2.40"
  sha256 arm:   "6cd57a20c98c02474007cb568b5454f4a528c89bc1e201212269c436bf77d965",
         intel: "cf4a91c297197a7474b1b85d3bb6600a47e053a21109aec4e5a5bb7ff4eec852"

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
