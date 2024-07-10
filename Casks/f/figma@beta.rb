cask "figma@beta" do
  arch arm: "mac-arm", intel: "mac"

  version "124.3.0"
  sha256 arm:   "e43f206b3623c9b645dc50c6c42a793100c16754fbe1bf650d7cb0b3198b228c",
         intel: "82138e6ec1f69464f85390012664936a1ddac7bd79cd20805161feb6d97601a1"

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

  depends_on macos: ">= :sierra"

  app "Figma Beta.app"

  zap trash: [
    "~/Library/Caches/com.figma.agent",
    "~/Library/Preferences/com.figma.DesktopBeta.plist",
    "~/Library/Saved Application State/com.figma.DesktopBeta.savedState",
  ]
end
