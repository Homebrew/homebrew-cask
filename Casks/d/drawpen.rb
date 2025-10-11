cask "drawpen" do
  arch arm: "arm64", intel: "x64"

  version "0.0.27"
  sha256 arm:   "c1d45f5bb96625551ee2a196bb7efb108af7fc83233fa30fcef0eaa5b61cf3c3",
         intel: "6598c200036cfc7b8fb64b525232ed9b3c0fa1533621412a8fc1b81ca6699290"

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
