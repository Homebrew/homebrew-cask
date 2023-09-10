cask "apifox" do
  arch arm: "-macOS-arm64"

  version "2.3.15"
  sha256 arm:   "46ce1cabde6a34e4e8d72ba36af8b494f791d7e78442b22ef547067fff4807a4",
         intel: "b0fc7abd15b28f00db705647181cc30e50ef9388ae0446f8c2da06bd4e79a052"

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
