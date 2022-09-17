cask "apifox" do
  arch arm: "-macOS-arm64"

  version "2.1.35"
  sha256 arm:   "2a8b286c22b7ecbab71ee91801187b0b3caf798597b8c70ca7af6a68197b5b9c",
         intel: "a7ebff4967490dd17ca768319684dfb2efdeef09249a396ea0873a7d3eb8b224"

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
