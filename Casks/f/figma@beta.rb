cask "figma@beta" do
  arch arm: "mac-arm", intel: "mac"

  version "124.5.0"
  sha256 arm:   "d70229b4fb02cce22faf59760fbbf82e11e88cde03d7ec8170356194efe85f20",
         intel: "d2d375021579ec7096efdf1b128a29fdac043a8598a5e8b8d058be172c7097ea"

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
