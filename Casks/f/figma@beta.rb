cask "figma@beta" do
  arch arm: "mac-arm", intel: "mac"

  version "125.9.8"
  sha256 arm:   "785304f173eeb3b75c3856ab6155699a40ffc7473844e111b850bd6e7e93fd90",
         intel: "f910b805ec6f48b1f423154739dfa2eb98a9228634eddae8c15bdf98cfac7a82"

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

  app "Figma Beta.app"

  zap trash: [
    "~/Library/Caches/com.figma.agent",
    "~/Library/Preferences/com.figma.DesktopBeta.plist",
    "~/Library/Saved Application State/com.figma.DesktopBeta.savedState",
  ]
end
