cask "apifox" do
  arch arm: "-macOS-arm64"

  version "2.2.26"
  sha256 arm:   "ef773884e7e9706766df30288ae256b56619c1c7b5994a8f0d13ccf0a7d5c571",
         intel: "003db09f97535f22c2190c3155783051e89f7e686122aa8ed9dacaf7e3b5abf0"

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
