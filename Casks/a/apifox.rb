cask "apifox" do
  arch arm: "-macOS-arm64"

  version "2.5.37"
  sha256 arm:   "dacacc4bddaad75b33eafdc37cf9ff61063c876488e79446bafa971e53f9a3a5",
         intel: "fd345f769de5b8b0a14cd7792da47f6b8c5be57eb0731d774818d6e8a209645e"

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
