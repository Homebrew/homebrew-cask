cask "apifox" do
  arch arm: "-macOS-arm64"
  livecheck_arch = on_arch_conditional arm: "-arm64"

  version "2.8.7"
  sha256 arm:   "0ea207f73294ac683de4b05223bdea84a6f2b4c164d32835439feb8c5b2ec2d2",
         intel: "8934177311ef901e02d346c633e177e146d24d247d0782eb87b361b3e86ef0ce"

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
