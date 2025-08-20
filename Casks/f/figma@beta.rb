cask "figma@beta" do
  arch arm: "mac-arm", intel: "mac"

  version "125.8.3"
  sha256 arm:   "858f8658457cf5e0b4194b1b650b7216c6f255f9a674d0b93e74a000c6d853c4",
         intel: "52f260011f7fea6e0cc2390e8f6f432161f2a0f6bdf453be97d3d92bad82372f"

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
