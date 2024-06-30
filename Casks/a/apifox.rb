cask "apifox" do
  arch arm: "-macOS-arm64"

  version "2.5.36"
  sha256 arm:   "7bc2a796b1cdf380bfb5bd97e2635d3fdc43ada661d2b0ee627ba316054343bc",
         intel: "f856a8f3436590e26287773550c902b1dc314692a0ba512410b78e26d7fc6d33"

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
