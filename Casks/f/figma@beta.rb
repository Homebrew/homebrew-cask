cask "figma@beta" do
  arch arm: "mac-arm", intel: "mac"

  version "125.6.4"
  sha256 arm:   "67e0fe7e413f0058575decc6065009fdefa47d782351ce656e51f1d62fcbfa51",
         intel: "e663225538a5a19acf1d26b9eda0f29d7b3233ca90fb852a8dfb2793f3298972"

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
