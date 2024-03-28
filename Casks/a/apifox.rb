cask "apifox" do
  arch arm: "-macOS-arm64"

  version "2.5.14"
  sha256 arm:   "00233a52d4cd901681f83f5dbbbf714beecacc958c7937757a9e777edcc3f07d",
         intel: "b627bb529bad32a2e3d7ac689b31d6c3e53c9e27d6a834266e32c3473f48e8fe"

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
