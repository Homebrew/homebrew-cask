cask "apifox" do
  arch arm: "-macOS-arm64"

  version "2.3.0"
  sha256 arm:   "baf126b38875459349bfa06ca951252986d172e2a443a5e859150eb3bf39fceb",
         intel: "6a11820981734257eba2e0211ce4f79fcc3e80d4f5c9a0b0bf7268e57d61c7a5"

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
