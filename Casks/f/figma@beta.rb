cask "figma@beta" do
  arch arm: "mac-arm", intel: "mac"

  version "124.4.1"
  sha256 arm:   "ab6a4f2a8eb3937329336cc3de4ed28d2244c41bc57a0469f5d6d76f62329a52",
         intel: "6a5897f003324ced1ba8aeff0888fa37b457e9adfe9b0f0ad0a671f6ce7568c5"

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
