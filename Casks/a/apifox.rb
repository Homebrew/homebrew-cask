cask "apifox" do
  arch arm: "-macOS-arm64"
  livecheck_arch = on_arch_conditional arm: "-arm64"

  version "2.6.50"
  sha256 arm:   "65033b34595578877364c9bdf09ad0be798a18974112026f3c67781b6e2b0f39",
         intel: "02f6f3211160fe9f0f13f26ff5e97d26030d0e9371b579bf5d1e984ed5e8fbda"

  url "https://file-assets.apifox.com/download/#{version}/Apifox#{arch}-#{version}.dmg"
  name "Apifox"
  desc "Platform for API documentation, debugging, and testing"
  homepage "https://www.apifox.com/"

  livecheck do
    url "https://api.apifox.com/api/v1/configs/client-updates/#{version}/mac#{livecheck_arch}/latest-mac.yml?noCache=#{Time.new.to_i * 2}"
    strategy :electron_builder
  end

  auto_updates true
  depends_on macos: ">= :el_capitan"

  app "Apifox.app"

  zap trash: [
    "~/Library/Application Support/apifox",
    "~/Library/Preferences/cn.apifox.app.plist",
    "~/Library/Saved Application State/cn.apifox.app.savedState",
  ]
end
