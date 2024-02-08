cask "apifox" do
  arch arm: "-macOS-arm64"

  version "2.5.5"
  sha256 arm:   "329431db1d2b6e83353448a0cd5f21a797adac2d5db114479689cf90e939f55a",
         intel: "7122cbdc4dbc825e4dd42ae6562973927b93488030d83902b23bbbd12581c097"

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
