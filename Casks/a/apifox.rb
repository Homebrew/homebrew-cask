cask "apifox" do
  arch arm: "-macOS-arm64"

  version "2.3.16"
  sha256 arm:   "4cc198a69378d8af31729fea760c8c733056dec73a95a081bfb588095716a259",
         intel: "234a439d40f62970a2aa199dbc027313c308b9dc5d7462e542cefd850ebf2fa7"

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
