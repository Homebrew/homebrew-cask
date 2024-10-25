cask "apifox" do
  arch arm: "-macOS-arm64"
  livecheck_arch = on_arch_conditional arm: "-arm64"

  version "2.6.26"
  sha256 arm:   "9652a57ead197885c13a562c4af195e81dd57347dda15ba4a18dc243d4c9ac2f",
         intel: "9fbe76c5abc8aaa79faea699127e4fc38a5e8c6e88ebf315ee2aff2510709ad2"

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
