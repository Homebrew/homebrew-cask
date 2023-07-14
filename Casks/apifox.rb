cask "apifox" do
  arch arm: "-macOS-arm64"

  version "2.3.4"
  sha256 arm:   "36d8065112612a8de749f72c94c930431cc7f97a70cf8e8070993abb76cc4161",
         intel: "6ec965f217933f8d32898934eacb15440500f292a4e73e15c4118e1a50bf763e"

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
