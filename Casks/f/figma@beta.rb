cask "figma@beta" do
  arch arm: "mac-arm", intel: "mac"

  version "125.6.2"
  sha256 arm:   "ba6a50de72cd22b09a79833931884d174c6adb8ecc4b979298e4708572215db8",
         intel: "75ae1f580f5e003e51a22187744ee90ddf542125a10f5629933b768ea6b6753a"

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
