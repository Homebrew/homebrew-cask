cask "apifox" do
  arch arm: "-macOS-arm64"

  version "2.5.23"
  sha256 arm:   "93d1cb3008add1841c0272a470ebec4fafef3a03038755292571a3a288d924ab",
         intel: "0ef3772d39e68f5b1cbecff78238c33403d6840aa746a6ec103bea64c75cbb7c"

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
