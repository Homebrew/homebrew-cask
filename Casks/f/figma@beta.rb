cask "figma@beta" do
  arch arm: "mac-arm", intel: "mac"

  version "126.7.2"
  sha256 arm:   "c8aa4512e405d84021f9367281cfda01bab788b4e94ebeac83cc0ef0ccc80a2c",
         intel: "41493e744e4b57d758cdda89fe549754cdab3863e31842c10894e83310f9411b"

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

  depends_on macos: :monterey

  app "Figma Beta.app"

  zap trash: [
    "~/Library/Caches/com.figma.agent",
    "~/Library/Preferences/com.figma.DesktopBeta.plist",
    "~/Library/Saved Application State/com.figma.DesktopBeta.savedState",
  ]
end
