cask "apifox" do
  arch arm: "-macOS-arm64"

  version "2.3.22"
  sha256 arm:   "bf7e4bae2c11fe448bfd1b9bba984f0041c632269bf203d008eebf5d27e44d9a",
         intel: "8bc2b87718d4e86afcced55edbcba748e26a832a41428d536deb791b7e4755bc"

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
