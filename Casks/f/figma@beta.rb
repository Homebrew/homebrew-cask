cask "figma@beta" do
  arch arm: "mac-arm", intel: "mac"

  version "124.2.8"
  sha256 arm:   "378b97e8d7e85865b6b13bea7d6e366fe927c944c05d99851968759e9680c631",
         intel: "11e88b1c293da69bdcc6e4b699907f878107da5fdd46e38dbae7f003ee436bd3"

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
