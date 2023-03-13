cask "apifox" do
  arch arm: "-macOS-arm64"

  version "2.2.27"
  sha256 arm:   "25ad765f6b23bce3309303803fb65e31227b7c47883055a0defc33577c487b39",
         intel: "597fbb02047c1f1ed1c25f2dae0934bd68ded43672d480b0b5bb85d29e87d06d"

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
