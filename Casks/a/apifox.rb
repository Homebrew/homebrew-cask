cask "apifox" do
  arch arm: "-macOS-arm64"

  version "2.6.1"
  sha256 arm:   "d2678daf8f6cf4b44a31ef8dfec265587ea12c7441c8d190effe5fce5032a0c5",
         intel: "d77ac591e54306baaca9041927f925a429fe3570b69b402e5875bebc7b75e450"

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
