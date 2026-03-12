cask "drawpen" do
  arch arm: "arm64", intel: "x64"

  version "0.0.45"
  sha256 arm:   "efef757977aba2cfa2a0a0a9092d220dce158ab30d9e9bfb2f74cc1e410a8767",
         intel: "921791caeef01b02879b9eafe20ee2fe4f588fd0c9196abb2be41e43e7bf1d87"

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
