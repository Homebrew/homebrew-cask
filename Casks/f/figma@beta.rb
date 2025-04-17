cask "figma@beta" do
  arch arm: "mac-arm", intel: "mac"

  version "125.4.3"
  sha256 arm:   "152a54d4cee69ae4ad9447537b4b6b46d8358c0f4b745838d574208bce23b1e3",
         intel: "76b366f426bcd44125a5dd64d6ef0b3ce91f62742bfec6263aaa3b38361e3b83"

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
