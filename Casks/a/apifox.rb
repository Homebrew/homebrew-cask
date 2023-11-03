cask "apifox" do
  arch arm: "-macOS-arm64"

  version "2.3.25"
  sha256 arm:   "1f12d2651027a5d107250b8547e36c472fa8f4c8f67d4ec1feb05d11aff72c56",
         intel: "ba993fe1107d060396928c89b292c364d0419ec5df947a3f0452a798bb60443b"

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
