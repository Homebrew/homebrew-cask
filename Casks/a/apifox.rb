cask "apifox" do
  arch arm: "-macOS-arm64"

  version "2.4.0"
  sha256 arm:   "fcc0b57745ba3fff2f4b3387ad81ff3b8e9dc5109f58873f779db81dd7b0daa3",
         intel: "1c2e9bc1b2845464dbc1112737594d76ab84a14083931e914feeefd512aae6a7"

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
