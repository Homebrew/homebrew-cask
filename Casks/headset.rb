cask "headset" do
  arch arm: "arm64", intel: "x64"

  version "4.2.0"
  sha256 arm:   "28a9d96d8bf7beebc6a93e77ac166fe16283c72e07171dd0ceb33df6d78bc2a2",
         intel: "532dcb484b119b74bdc30c72856d072df03c9b64546d3912a7dd3d371733dff6"

  url "https://github.com/headsetapp/headset-electron/releases/download/v#{version}/Headset-#{version}-#{arch}.dmg",
      verified: "github.com/headsetapp/headset-electron/"
  name "Headset"
  desc "Music player powered by YouTube and Reddit"
  homepage "https://headsetapp.co/"

  app "Headset.app"

  zap trash: [
    "~/Library/Application Support/Headset",
    "~/Library/Caches/co.headsetapp.app",
    "~/Library/Caches/co.headsetapp.app.ShipIt",
    "~/Library/Cookies/co.headsetapp.app.binarycookies",
    "~/Library/Logs/Headset",
    "~/Library/Preferences/ByHost/co.headsetapp.app.ShipIt.*.plist",
    "~/Library/Preferences/co.headsetapp.app.plist",
    "~/Library/Saved Application State/co.headsetapp.app.savedState",
  ]
end
