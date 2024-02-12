cask "apifox" do
  arch arm: "-macOS-arm64"

  version "2.5.6"
  sha256 arm:   "0b14a2374cb8b150c075968065d723ffe127b71baa672f8603d12bfe03abcdee",
         intel: "e93147ca42340e55ccfc7b78aebe096438212149a8d0777ed3bf3e05318ef65b"

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
