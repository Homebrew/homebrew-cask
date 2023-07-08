cask "apifox" do
  arch arm: "-macOS-arm64"

  version "2.3.3"
  sha256 arm:   "4f93bb37f19c319630ddab03f246fcb3cda25c97904836a2fd0e685a34eb359f",
         intel: "e9398d831730a7c837f08eb15e108b381cfaa11c9c6455cd09db4cc5b7e8f748"

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
