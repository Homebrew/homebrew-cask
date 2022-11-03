cask "apifox" do
  arch arm: "-macOS-arm64"

  version "2.2.6"
  sha256 arm:   "ae52c353864386f5d3a7f693ae52f0ed56941e8916ffb09f0b5f516594bce483",
         intel: "7a4dd10830422aeb266d5183dc58ca15eba1ad945cca92bb9e32b773530b6b5e"

  url "https://cdn.apifox.cn/download/#{version}/Apifox#{arch}-#{version}.dmg"
  name "Apifox"
  desc "Platform for API documentation, debugging, Mock and testing"
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
