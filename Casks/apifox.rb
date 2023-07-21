cask "apifox" do
  arch arm: "-macOS-arm64"

  version "2.3.5"
  sha256 arm:   "9549d11ec30f3ef89b5aa763b6b42b529b6162e227a29975881e5652a5b3b2fe",
         intel: "3f32ced935766b75f4dd858ad8a38f742fce30295ba11c63b0dcd4521871ff1f"

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
