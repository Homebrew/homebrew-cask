cask "apifox" do
  arch arm: "-macOS-arm64"

  version "2.2.36"
  sha256 arm:   "044b6ea7a3bf8976577a1944fe6f115fe1c3ca1eb645cf2c1cc0175535484278",
         intel: "690d17a382b8f1cff8278306df9953e0ae248f76ca3b11c2eccb7285e8f62349"

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
