cask "apifox" do
  arch arm: "-macOS-arm64"

  version "2.2.5"
  sha256 arm:   "0ee2c633edaf33b9075249abf10ad101627261d12875967391f2e592d63bb497",
         intel: "860546a14c945692192e5b0f653776cd76c3717cc0951775f4c53e3ec5707927"

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
