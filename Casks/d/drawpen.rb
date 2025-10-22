cask "drawpen" do
  arch arm: "arm64", intel: "x64"

  version "0.0.28"
  sha256 arm:   "18ce5349dc0d280f49a2181a580b389f0745eca21000964701c4f425fc58e05d",
         intel: "33153c83064131fda1b4490d3ec401bc40c89e49ec4108fca4a5974f041b7841"

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
