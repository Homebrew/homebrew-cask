cask "apifox" do
  arch arm: "-macOS-arm64"

  version "2.3.2"
  sha256 arm:   "d976a645b3469fb2a509ae6ef4242fad06d24ea9aff67a31ea34291e03c8344a",
         intel: "76b6b26795eaf5b21b24cfa6b7487c48e147153a885d527e826571ea33cdbd4c"

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
