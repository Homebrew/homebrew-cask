cask "apifox" do
  arch arm: "-macOS-arm64"
  livecheck_arch = on_arch_conditional arm: "-arm64"

  version "2.8.27"
  sha256 arm:   "a2417d395f17235335cd247b874001153756917a0ac8e3c872dc398a014f9bb6",
         intel: "a99e161079d9f3775f41fd2c5eaccfc22f9522ae945c38afcc80fd5b2e4c0436"

  url "https://file-assets.apifox.com/download/#{version}/Apifox#{arch}-#{version}.dmg",
      verified: "file-assets.apifox.com/download/"
  name "Apifox"
  desc "Platform for API documentation, debugging, and testing"
  homepage "https://github.com/apifox/apifox"

  livecheck do
    url "https://api.apifox.com/api/v1/configs/client-updates/#{version}/mac#{livecheck_arch}/latest-mac.yml?noCache=#{Time.new.to_i * 2}"
    strategy :electron_builder
  end

  auto_updates true
  depends_on :macos

  app "Apifox.app"

  zap trash: [
    "~/Library/Application Support/apifox",
    "~/Library/Preferences/cn.apifox.app.plist",
    "~/Library/Saved Application State/cn.apifox.app.savedState",
  ]
end
