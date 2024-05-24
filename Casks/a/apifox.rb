cask "apifox" do
  arch arm: "-macOS-arm64"

  version "2.5.27"
  sha256 arm:   "2f2e09eb35b907d83183fc6a5678f25530e68c02b3f3dafaa349ca262574b54b",
         intel: "1ed89ca81d7ed897bfeddba2affeb96630aa200645d88fd0e7110169a1294b79"

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
