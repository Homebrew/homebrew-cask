cask "apifox" do
  arch arm: "-macOS-arm64"
  livecheck_arch = on_arch_conditional arm: "-arm64"

  version "2.7.40"
  sha256 arm:   "0b00dbe12c1590a93b59224268a7eac814da9f66384dd2da895c1ff2a5a6acf5",
         intel: "4e161cf6a7aea4196daba75a488317fe711baba3e0475ebc4a0bda154d974c7c"

  url "https://file-assets.apifox.com/download/#{version}/Apifox#{arch}-#{version}.dmg"
  name "Apifox"
  desc "Platform for API documentation, debugging, and testing"
  homepage "https://www.apifox.com/"

  livecheck do
    url "https://api.apifox.com/api/v1/configs/client-updates/#{version}/mac#{livecheck_arch}/latest-mac.yml?noCache=#{Time.new.to_i * 2}"
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
