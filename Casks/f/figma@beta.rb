cask "figma@beta" do
  arch arm: "mac-arm", intel: "mac"

  version "125.1.1"
  sha256 arm:   "e5db88919c3fd4c57b374b5d7a7b13b4baed396eacf533217bec0272227eff8d",
         intel: "e44b48e06b07a9e2775b82d39f3df8c5d74a33b7b05dd135b29f59320da376c0"

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
