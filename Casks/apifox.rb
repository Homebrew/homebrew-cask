cask "apifox" do
  arch arm: "-macOS-arm64"

  version "2.3.6"
  sha256 arm:   "2bd8774a7add95b3a2a3ff5720d0fbc7ede2a68e6de299de1e511ab65391f88a",
         intel: "42a80ce777a62046d70f0c5a5a28924ed71109716cd87f26297e13dc05531ec4"

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
