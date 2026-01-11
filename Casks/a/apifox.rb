cask "apifox" do
  arch arm: "-macOS-arm64"
  livecheck_arch = on_arch_conditional arm: "-arm64"

  version "2.8.1"
  sha256 arm:   "515793cfd6f429ac65fca0e57f848abad817ef9e5cd57a37e45e7e2e612b79f3",
         intel: "5e8f9d61b760722f4c835d05c2b521946c07caa984e3e64cd2401c43a3161075"

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

  app "Apifox.app"

  zap trash: [
    "~/Library/Application Support/apifox",
    "~/Library/Preferences/cn.apifox.app.plist",
    "~/Library/Saved Application State/cn.apifox.app.savedState",
  ]
end
