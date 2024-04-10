cask "affine" do
  arch arm: "arm64", intel: "x64"

  version "0.13.5"
  sha256 arm:   "d15ff526f0e986d1cacc9d4a95e5678d856e5c3801f08b2c3ea46facd2f12522",
         intel: "843fe419d08fb66456725a65c5390cd0b9ae62d737248cb54567e25c33e096ae"

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
