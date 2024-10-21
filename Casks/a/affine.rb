cask "affine" do
  arch arm: "arm64", intel: "x64"

  version "0.17.5"
  sha256 arm:   "d06979c2c00630f16244a2e28f24c83eedc500aa456dc4948c42701dfc50aef4",
         intel: "07ed6e441075b1c3305f06e28080617eeb0c1436704291708cf91ed522e36640"

  url "https://github.com/toeverything/AFFiNE/releases/download/v#{version}/affine-#{version}-stable-macos-#{arch}.zip",
      verified: "github.com/toeverything/AFFiNE/"
  name "AFFiNE"
  desc "Note editor and whiteboard"
  homepage "https://affine.pro/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: ">= :catalina"

  app "AFFiNE.app"

  zap trash: [
    "~/Library/Application Support/AFFiNE",
    "~/Library/Logs/AFFiNE",
    "~/Library/Preferences/pro.affine.app.plist",
    "~/Library/Saved Application State/pro.affine.app.savedState",
  ]
end
