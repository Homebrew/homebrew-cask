cask "figma@beta" do
  arch arm: "mac-arm", intel: "mac"

  version "125.6.0"
  sha256 arm:   "bcf3449f8bf9ba7fdfbddfefa87fc7b90d4ea054604eadcc0cc410f2853fc05b",
         intel: "0a042d4ee8dd978da51edfd4a66506ae5db9bf4362dabf7a8f455e9176d587f3"

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
