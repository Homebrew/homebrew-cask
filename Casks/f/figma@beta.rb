cask "figma@beta" do
  arch arm: "mac-arm", intel: "mac"

  version "126.3.4"
  sha256 arm:   "29447b885ca49dff31194f7874605cb318242bde762cf325329375e85246cc6a",
         intel: "221037f903db022006b0aa8f464c354fe1cdbbe1871c1f6aafa3873a8026807a"

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
