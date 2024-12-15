cask "apifox" do
  arch arm: "-macOS-arm64"
  livecheck_arch = on_arch_conditional arm: "-arm64"

  version "2.6.39"
  sha256 arm:   "53670dd4162aab4890c3a8246a474c97ebdde18fb7ba4ae94400f442b80ecb5e",
         intel: "e3b79ea45c55e27a7662c39af59cdf29a88f17d97a6a6bfae6d8dbf521cb648a"

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
