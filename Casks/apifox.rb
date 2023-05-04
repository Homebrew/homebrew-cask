cask "apifox" do
  arch arm: "-macOS-arm64"

  version "2.2.38"
  sha256 arm:   "8b83ddabadb464028c3d05e56be1038bb8e7acee8a02af6b04545d9457277abe",
         intel: "208925d5daded1180c5301bf058fd1c86464948a113826d91bf045e41a6e44c5"

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
