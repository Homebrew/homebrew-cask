cask "figma@beta" do
  arch arm: "mac-arm", intel: "mac"

  version "124.7.1"
  sha256 arm:   "b6d1bbfa705051dc767161f93a4aea5f5f217554eed7fb23cbecb25b42cd1f4f",
         intel: "eef0e02fca3c8245e6d2a2141d549706946d9a0bad3d1e76ddaecca000952b51"

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
