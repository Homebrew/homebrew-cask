cask "drawpen" do
  arch arm: "arm64", intel: "x64"

  version "0.0.37"
  sha256 arm:   "60d43edf7bcc6b009ffb7e2d9a71891c53db571af71b815d4731f87286f4b5dd",
         intel: "5281ca5ba5a0f27cbd683581dffae41717295e9557c7a0952797525351eb8c4b"

  url "https://github.com/DmytroVasin/DrawPen/releases/download/v#{version}/DrawPen-#{version}-#{arch}.dmg"
  name "DrawPen"
  desc "Screen annotation tool"
  homepage "https://github.com/DmytroVasin/DrawPen"

  livecheck do
    url :url
    strategy :github_latest
  end

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
