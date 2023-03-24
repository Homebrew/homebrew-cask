cask "apifox" do
  arch arm: "-macOS-arm64"

  version "2.2.29"
  sha256 arm:   "48e76b9d4e0359656b852bbfb42d00920e411b07389046d4ce10750eaca9d56e",
         intel: "fb4cfbfbebd1080a7955c66eb1f6142a355e9364078ae71b03362d19d1645740"

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
