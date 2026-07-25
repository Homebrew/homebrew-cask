cask "drawpen" do
  arch arm: "arm64", intel: "x64"

  version "0.0.53"
  sha256 arm:   "55f5a60253df63acf480706e39b292742487597a0a620e62a9ba43ac621e27d7",
         intel: "f836a91666095f2716f24fa526b93e6a3c6443a899d040caa02930172068c031"

  url "https://github.com/DmytroVasin/DrawPen/releases/download/v#{version}/DrawPen-#{version}-#{arch}.dmg"
  name "DrawPen"
  desc "Screen annotation tool"
  homepage "https://github.com/DmytroVasin/DrawPen"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: :monterey

  app "DrawPen.app"

  zap trash: [
    "~/Library/Application Support/DrawPen",
    "~/Library/Logs/DrawPen",
    "~/Library/Preferences/*drawpen*.plist",
    "~/Library/Saved Application State/*DrawPen*.savedState",
  ]
end
