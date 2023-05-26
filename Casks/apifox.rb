cask "apifox" do
  arch arm: "-macOS-arm64"

  version "2.2.41"
  sha256 arm:   "b5b3e9bf9669b4e734d8ee4d6416f6ffd53b504a2eb45d54edda54c8a272b2f2",
         intel: "0f98d50b5a183434028e67a83551a02314f40e37148b08ce8deee082862dcd1a"

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
