cask "apifox" do
  arch arm: "-macOS-arm64"

  version "2.3.13"
  sha256 arm:   "5d810f2a944566960db4ae90a91e6d4f931081214b786575e18da28aecf53e3c",
         intel: "51e02a22cbe3ca92c6d80285491c3c162c815e1bcad3af1a7a7e1de0a2e7f2e1"

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
