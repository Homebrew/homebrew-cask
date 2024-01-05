cask "apifox" do
  arch arm: "-macOS-arm64"

  version "2.4.11"
  sha256 arm:   "a6d517c4ce87e60fa9d1ca44926967f9f55eb43cd7a6c97af90f48445343f72f",
         intel: "07e324a95cde8f0503240d813526e9f322c26688c7b754651c5922046b8a9608"

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
