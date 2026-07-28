cask "figma@beta" do
  arch arm: "mac-arm", intel: "mac"

  version "126.8.6"
  sha256 arm:   "a4c2034f5f5ab5810052c9002ed34ef9bb7cc7a15722e3865d0e88be58e9700c",
         intel: "161baab0840b99645dfa92cc695ea68e2141c074792d66eb941b0f65c24470c8"

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

  depends_on macos: :monterey

  app "Figma Beta.app"

  zap trash: [
    "~/Library/Caches/com.figma.agent",
    "~/Library/Preferences/com.figma.DesktopBeta.plist",
    "~/Library/Saved Application State/com.figma.DesktopBeta.savedState",
  ]
end
