cask "apifox" do
  arch arm: "-macOS-arm64"

  version "2.4.12"
  sha256 arm:   "ae1e5edd3f07767ae8f3df4eaaa116b65eafb941b4d506d9fe2dfec792a2fb97",
         intel: "de15b099fa50460fb512c19831cb1c27a4c644190fb19e2b0ed86eba61d8e80f"

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
