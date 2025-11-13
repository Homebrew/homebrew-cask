cask "figma@beta" do
  arch arm: "mac-arm", intel: "mac"

  version "125.11.0"
  sha256 arm:   "beedc332c3dd2bef2a1f0af4c4f68447029c91a9ac6b43b733093f2e25f9afb1",
         intel: "bce80f3b7d1f1507c676afea3ee04f569c545233e99c61e9a680cea85f196e3c"

  url "https://desktop.figma.com/#{arch}/beta/FigmaBeta-#{version}.zip"
  name "Figma Beta"
  desc "Collaborative team software"
  homepage "https://figma.com/"

  livecheck do
    url "https://desktop.figma.com/#{arch}/beta/RELEASE.json"
    strategy :json do |json|
      json["version"]
    end
  end

  depends_on macos: ">= :monterey"

  app "Figma Beta.app"

  zap trash: [
    "~/Library/Caches/com.figma.agent",
    "~/Library/Preferences/com.figma.DesktopBeta.plist",
    "~/Library/Saved Application State/com.figma.DesktopBeta.savedState",
  ]
end
