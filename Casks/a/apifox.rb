cask "apifox" do
  arch arm: "-macOS-arm64"

  version "2.5.29"
  sha256 arm:   "fa94d34316e0251c141fa281b9054d095601a1337d799ece504a794da5733cb9",
         intel: "cd3481f7822dbd5f29fd6417bdb94180a790951aa6b877b20b172bbfca913578"

  url "https://file-assets.apifox.com/download/#{version}/Apifox#{arch}-#{version}.dmg"
  name "Apifox"
  desc "Platform for API documentation, debugging, and testing"
  homepage "https://www.apifox.com/"

  livecheck do
    url "https://api.apifox.com/api/v1/configs/client-updates/#{version}/mac/latest-mac.yml?noCache=#{Time.new.to_i * 2}"
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
