cask "figma@beta" do
  arch arm: "mac-arm", intel: "mac"

  version "125.5.3"
  sha256 arm:   "f552f44386a7c7d5625e9892cad5780a16764a75d670b85e57a9544363c5bdf9",
         intel: "5ddb2a6c8a477f8716f3de0862d45adb69edd233f047a68add4ab2ac219570c6"

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
