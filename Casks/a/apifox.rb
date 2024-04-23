cask "apifox" do
  arch arm: "-macOS-arm64"

  version "2.5.21"
  sha256 arm:   "3e4ab73d76f65ff9ab0a1d308de165d486539f57fcb19f386bee07e19cc4b5ae",
         intel: "b6173cacaf769d332f878ba27b3280744022b59134fd41c70fd306a34da73b17"

  url "https://file-assets.apifox.com/download/#{version}/Apifox#{arch}-#{version}.dmg"
  name "Apifox"
  desc "Platform for API documentation, debugging, and testing"
  homepage "https://www.apifox.com/"

  livecheck do
    url "https://api.apifox.com/api/v1/configs/client-updates/#{version}/mac/latest-mac.yml?noCache=#{Time.new.to_i * 2}"
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
