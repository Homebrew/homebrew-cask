cask "drawpen" do
  arch arm: "arm64", intel: "x64"

  version "0.0.41"
  sha256 arm:   "5eb9c2a8fe69d047a0f082effe9ea5c0de586471c85986816ac00508c6836e35",
         intel: "b6f95cf46f4421f58f596fd5ad00cd4b5c318375678f5b035e9fe5a5329678ca"

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
