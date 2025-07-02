cask "figma@beta" do
  arch arm: "mac-arm", intel: "mac"

  version "125.6.3"
  sha256 arm:   "2a89b5a1a766e04a0dbab8ed4384ca222ed1692e3cf5cce835880253ef262918",
         intel: "088184bd90e50e1af83cb7079f83defad89b8c6cf8228986a5db3698c823ca4f"

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
