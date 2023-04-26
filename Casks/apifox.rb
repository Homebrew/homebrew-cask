cask "apifox" do
  arch arm: "-macOS-arm64"

  version "2.2.35"
  sha256 arm:   "4fb694626a22a46fa7a51e55a06734e3d63e95fbef42ced365f98f25e8d6aef6",
         intel: "c352f4ca63125fa59c3088d9c2c63454314078d299cafc0da05faf361725bf98"

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
