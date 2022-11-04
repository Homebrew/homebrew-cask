cask "apifox" do
  arch arm: "-macOS-arm64"

  version "2.2.7"
  sha256 arm:   "7d9666116808bbb0fad890dbe736c720b54a18de153557d34b7c681fb2a345b7",
         intel: "ec3c4e466c5de25cf5fc3d2979be877978f7173c7b29de96c955e9101139b1dd"

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
