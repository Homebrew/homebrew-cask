cask "apifox" do
  arch arm: "-macOS-arm64"

  version "2.5.20"
  sha256 arm:   "9dae6a8107f0e7d4bc2bf5da31f692edbcb8c617be1220830a4b3910fce305a0",
         intel: "95538fb6556e6eb3443bec468c93fe377a7891df3fba10f2786c408ad68cc9a6"

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
