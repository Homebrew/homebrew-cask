cask "figma@beta" do
  arch arm: "mac-arm", intel: "mac"

  version "126.3.6"
  sha256 arm:   "7490bd8c94a00be7d97e29fc74629891b6033d27409580653754ff3cd8a458cc",
         intel: "81ed9343c4bde2bf903c80b92c981df12c3c27b1681b37059d0f3b22d230a92a"

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
