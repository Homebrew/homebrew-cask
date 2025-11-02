cask "drawpen" do
  arch arm: "arm64", intel: "x64"

  version "0.0.29"
  sha256 arm:   "55cae3667b6aeedbcfa6cd0a9213879c9609ac34535b70931cde7e300b9339de",
         intel: "dd13742c2326ee80dcd9dd4f2629725344b6a0bb11feb80ead8b8f46758ed049"

  url "https://github.com/DmytroVasin/DrawPen/releases/download/v#{version}/DrawPen-#{version}-#{arch}.dmg"
  name "DrawPen"
  desc "Screen annotation tool"
  homepage "https://github.com/DmytroVasin/DrawPen"

  auto_updates true
  depends_on macos: ">= :monterey"

  app "DrawPen.app"

  zap trash: [
    "~/Library/Application Support/DrawPen",
    "~/Library/Logs/DrawPen",
    "~/Library/Preferences/*drawpen*.plist",
    "~/Library/Saved Application State/*DrawPen*.savedState",
  ]
end
