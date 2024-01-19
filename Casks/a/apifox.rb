cask "apifox" do
  arch arm: "-macOS-arm64"

  version "2.5.0"
  sha256 arm:   "225dd77bedbdc4ceb09340a05c7f6e4e7e4c043b723a49fe2c10a7d6943d8615",
         intel: "e353e11225e8666b20623491cb7e64472e537b11dd3b75a87e0f709a522ee8c4"

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
