cask "apifox" do
  arch arm: "-macOS-arm64"

  version "2.3.19"
  sha256 arm:   "319259b61ddbd5c44ff70620e7aaf4fb7c53ddb1d80e6a3b4c5c09b1b2f6c3ad",
         intel: "ad9ba505a8dfacc75a47a7fe1e30e57d806f664efb50557bc9ac721ac512b96e"

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
