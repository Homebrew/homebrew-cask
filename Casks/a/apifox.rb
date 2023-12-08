cask "apifox" do
  arch arm: "-macOS-arm64"

  version "2.4.3"
  sha256 arm:   "5a14b6cbddbd821f5fb72be81fc76ec2fd01a58d6c729fa747f5106ae7e2567b",
         intel: "577c205ea4c60ab2c9b23f2e3654c70f1fc621bf331a8712a6670bde08d37cb9"

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
