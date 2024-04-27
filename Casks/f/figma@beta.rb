cask "figma@beta" do
  arch arm: "mac-arm", intel: "mac"

  version "124.0.1"
  sha256 arm:   "47c55dc8a4e22ef773a93ec4659c10f880c4c503d5f6ce679a84213655267153",
         intel: "9f4f1abd15aacd1bf40def96edaa3019896a9f10f163c0d02e9ae37e0dca2327"

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
