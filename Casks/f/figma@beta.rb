cask "figma@beta" do
  arch arm: "mac-arm", intel: "mac"

  version "125.3.4"
  sha256 arm:   "cf2abb821cfd1ff0d52862e144aabb5e59b916b54ac8c8656551dfc0ad42ac2c",
         intel: "922595d0d530fbd2ec3f7ea6730bacfdf94e1ab5cee1fe5d573ae2d8ddcdfb10"

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
