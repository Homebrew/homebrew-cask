cask "apifox" do
  arch arm: "-macOS-arm64"
  livecheck_arch = on_arch_conditional arm: "-arm64"

  version "2.7.55"
  sha256 arm:   "db6c04c535114ac63498e31ac6f217a9f521019e8854fb312080690f91ae1dae",
         intel: "2aa0c36674570bb19c2cc6575b2deecd7dcd3f1b7179fa9846fa749d23e52f46"

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
