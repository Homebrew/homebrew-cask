cask "apifox" do
  arch arm: "-macOS-arm64"

  version "2.4.9"
  sha256 arm:   "a329a690e8158affb9d925ea57b7818c33c22f04110eff309fa56a590a8d1143",
         intel: "789034b750a13ae961c658d980c93c0340f83330a406e7395d688c4fbb9cdb3b"

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
