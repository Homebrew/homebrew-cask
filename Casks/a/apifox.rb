cask "apifox" do
  arch arm: "-macOS-arm64"

  version "2.5.10"
  sha256 arm:   "f0f41573828009445b04620fa87a4980ad1c1f1470c0c8de8aadcc741c25e945",
         intel: "0e1b94b933f83fd31f06abfba92cad776a61979d29f4812a5cde2ad3c963e3e5"

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
