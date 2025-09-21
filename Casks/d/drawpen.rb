cask "drawpen" do
  arch arm: "arm64", intel: "x64"

  version "0.0.24"
  sha256 arm:   "f3486db2205a14774bf9ba884a66341efcf6fe81cd2dbe0c78bec16d45915a73",
         intel: "f99f2783e24e0eb5f4f5441cd6b1d7346178c971f47301b48a8e2d4ee08b8c45"

  url "https://github.com/DmytroVasin/DrawPen/releases/download/v#{version}/DrawPen-#{version}-#{arch}.dmg"
  name "DrawPen"
  desc "Screen annotation tool"
  homepage "https://github.com/DmytroVasin/DrawPen"

  auto_updates true
  depends_on macos: ">= :big_sur"

  app "DrawPen.app"

  zap trash: [
    "~/Library/Application Support/DrawPen",
    "~/Library/Logs/DrawPen",
    "~/Library/Preferences/*drawpen*.plist",
    "~/Library/Saved Application State/*DrawPen*.savedState",
  ]
end
