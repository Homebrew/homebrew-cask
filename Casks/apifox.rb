cask "apifox" do
  arch arm: "-macOS-arm64"

  version "2.2.3"
  sha256 arm:   "d208d8c415932c5a2278f69856d3a790c124b0245890f0ffbb604e85c566cc5b",
         intel: "1efbf35de7fc585117aa86cb665f3c1af54688eca73393b2deee6a0be02eb31f"

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
