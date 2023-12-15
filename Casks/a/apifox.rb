cask "apifox" do
  arch arm: "-macOS-arm64"

  version "2.4.4"
  sha256 arm:   "489359bd5122c83628fe047b3b209034062373255b92c74862fef6dc6e2c9881",
         intel: "d5627399d572f3abd689ab4cc87df04b97df49d43eef4b4593fbfd06323766df"

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
