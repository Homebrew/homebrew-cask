cask "apifox" do
  arch arm: "-macOS-arm64"

  version "2.5.11"
  sha256 arm:   "f5f42ff1f6a8fb88c48750384c9a4cf26b25554e296688df8c7e2efe73d377de",
         intel: "effd1b7b5cd157792b9ce08fd26367268afe89c673c207d63f972986d62f415b"

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
