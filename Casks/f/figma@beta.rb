cask "figma@beta" do
  arch arm: "mac-arm", intel: "mac"

  version "125.11.3"
  sha256 arm:   "d2f83d186b2a94df3e59cdb6d2c0729fc2f8d4f09b26c88014b81e724a71cde0",
         intel: "8bd50cea3a11d9846d32f5b5127d37216438ca860c87edb56b961b398d9f517c"

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

  depends_on macos: ">= :monterey"

  app "Figma Beta.app"

  zap trash: [
    "~/Library/Caches/com.figma.agent",
    "~/Library/Preferences/com.figma.DesktopBeta.plist",
    "~/Library/Saved Application State/com.figma.DesktopBeta.savedState",
  ]
end
