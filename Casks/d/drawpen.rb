cask "drawpen" do
  arch arm: "arm64", intel: "x64"

  version "0.0.30"
  sha256 arm:   "b331412a58108986679926a1155fede6bbf533f687653aaee75e3042dbc82fde",
         intel: "1caab7f5f289ce6562803b814dc98322596e7ac54d0cf39717d3080fc2bacdc4"

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
