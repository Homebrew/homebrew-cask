cask "apifox" do
  arch arm: "-macOS-arm64"

  version "2.5.26"
  sha256 arm:   "86198f424982ef98aef18c141df837e8161471d8bb9be68b6a91a15e0be40257",
         intel: "1c9d4cf240df6ddfe1ea5efef745e61e50c23fec539b716d3eb6825f3cb3eafb"

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
