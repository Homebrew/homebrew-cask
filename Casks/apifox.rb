cask "apifox" do
  arch arm: "-macOS-arm64"

  version "2.2.1"
  sha256 arm:   "dd107dbaea97506c2b96169c80ebeaa0d44016ca1909c33f02f4dc34311a0f45",
         intel: "4db4f8f57f0c81e62a00b7a9566461ca146c2dd183fbe27f84cf4fb6c677ad82"

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
